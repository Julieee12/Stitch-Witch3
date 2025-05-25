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

BLECharacteristic xCharacteristic("87654321-4321-4321-4321-210987654329", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);
BLECharacteristic yCharacteristic("87654321-4321-4321-4321-210987654328", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);
BLECharacteristic zCharacteristic("87654321-4321-4321-4321-210987654327", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);
BLECharacteristic cuntCharacteristic("87654321-4321-4321-4321-210987654326", BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_NOTIFY | BLECharacteristic::PROPERTY_WRITE);



bool deviceConnected = false; 

class MyServerCallbacks: public BLEServerCallbacks {
    void onConnect(BLEServer* pServer) {
      deviceConnected = true;
    };

    void onDisconnect(BLEServer* pServer) {
      deviceConnected = false;
    }
};



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
  pService->start();
  BLEAdvertising *pAdvertising = BLEDevice::getAdvertising();
  pAdvertising->addServiceUUID(SERVICE_UUID);
  BLEDevice::startAdvertising();
  Serial.println("Bluetooth device started, waiting for connection...");

  // Initialize OLED display
  display.begin(i2c_Address, true);
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(SH110X_WHITE);
  display.setCursor(10, 20);
  display.println("Stitch    Count:12");
  display.display();
}

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
