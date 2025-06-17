#include "Wire.h"
#include "I2Cdev.h"
#include "MPU6050.h"
#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEServer.h>
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SH110X.h>

// Use 0x68 as the default MPU6050 address
MPU6050 mpu(0x68);

int16_t ax, ay, az;
int16_t gx, gy, gz;

#define SERVICE_UUID        "12345678-1234-1234-1234-123456789012"
#define CHARACTERISTIC_UUID "87654321-4321-4321-4321-210987654321"

//object for the characteristics

BLECharacteristic xCharacteristic("0001", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);
BLECharacteristic yCharacteristic("0002", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);
BLECharacteristic zCharacteristic("0003", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);
BLECharacteristic cuntCharacteristic("0004", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);

int stitchCount = 0;



bool deviceConnected = false; 


struct MyData {
  int16_t ax;
  int16_t ay;
  int16_t az;
};

MyData data;

#define i2c_Address 0x3C
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET -1
Adafruit_SH1106G display = Adafruit_SH1106G(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


void updateDisplay() {
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(SH110X_WHITE);
  
  // Display "Stitch" on first line
  display.setCursor(10, 10);
  display.println("Stitch");
  
  // Display "Count:" on second line
  display.setCursor(10, 30);
  display.println("Count:");
  
  // Display the actual count number on third line
  display.setCursor(10, 50);
  display.println(String(stitchCount));
  
  display.display();
}
// methods from listener for when the device connects or disconnects
  class MyServerCallbacks: public BLEServerCallbacks {
    void onConnect(BLEServer* pServer) {
      deviceConnected = true;
    };

    void onDisconnect(BLEServer* pServer) {
      deviceConnected = false;
    }
};

//method for when the service is written to (we use it down below)
class MyCallbacks: public BLECharacteristicCallbacks {
    void onWrite(BLECharacteristic *pCharacteristic) {
      String value = pCharacteristic->getValue();

      if (value.length() > 0) {
        Serial.println("*********");
        Serial.print("New value: ");
        for (int i = 0; i < value.length(); i++){
          Serial.print(value[i]); 
          //note for future self:
          //you may need to send the data as hex codes
          //if so, check the ascii table and send based on that
        }
        Serial.println();
        Serial.println("********************************************************************************************************************************************");

        int receivedStitchCount = value.toInt();
        stitchCount = receivedStitchCount;

        updateDisplay();

        pCharacteristic->notify();


      }
    }

};


void setup() {
  Serial.begin(9600);
  Wire.begin();
  delay(100);  // Allow I2C devices time to power up
  

  mpu.initialize();
  if (mpu.testConnection()) {
    Serial.println("MPU6050 connection successful");
  } else {
    Serial.println("MPU6050 connection failed! Check wiring and address.");
    while (1); // Halt execution if MPU6050 is not connected
  }

  // Initialize BLE
  BLEDevice::init("Stitch Witch");
  BLEServer *pServer = BLEDevice::createServer();
  pServer->setCallbacks(new MyServerCallbacks());

  
  BLEService *pService = pServer->createService(SERVICE_UUID);
  pService->addCharacteristic(&xCharacteristic);
  pService->addCharacteristic(&yCharacteristic);
  pService->addCharacteristic(&zCharacteristic);
  pService->addCharacteristic(&cuntCharacteristic);

// callback for receiving count on device as well
  cuntCharacteristic.setCallbacks(new MyCallbacks());

  pService->start();
  BLEAdvertising *pAdvertising = BLEDevice::getAdvertising();
  pAdvertising->addServiceUUID(SERVICE_UUID);
  BLEDevice::startAdvertising();
  Serial.println("Bluetooth device started, waiting for connection...");

  // Initialize OLED display
  display.begin(i2c_Address, true);
  updateDisplay(); 
}



// raw data coming from sensor
void loop() {

  if (deviceConnected) {
 mpu.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);

  data.ax = ax;
  data.ay = ay;
  data.az = az;

  Serial.print("Raw AX = "); Serial.print(data.ax);
  Serial.print("  AY = "); Serial.print(data.ay);
  Serial.print("  AZ = "); Serial.println(data.az);

int axVal = data.ax;
int ayVal = data.ay;
int azVal = data.az;
int cuntVal = 10;

xCharacteristic.setValue(axVal);
yCharacteristic.setValue(ayVal);
zCharacteristic.setValue(azVal);
cuntCharacteristic.setValue(cuntVal);

//sends the data to the app
xCharacteristic.notify();
yCharacteristic.notify();
zCharacteristic.notify();
cuntCharacteristic.notify();


  // // Send raw data via BLE
  // sensorCharacteristic.setValue((uint8_t *)&data, sizeof(data));
  // sensorCharacteristic.notify();

  delay(100);

  }

 
}
