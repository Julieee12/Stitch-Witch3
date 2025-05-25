import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:stitch_witch_aid/counter/stitch-detector.dart';
import 'package:stitch_witch_aid/projects/project-bloc.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  ProjectItemModel? _selectedProject;

  final TextEditingController stitchesPerRowController = TextEditingController();

  //other variables
  StitchDetector stitchDetector = StitchDetector();

  // Store current axis values
  int? currentX, currentY, currentZ;


  //Bluetooth variables
  bool isBluetooth = false;
  late BluetoothDevice stitchWitch;
  //presumably We're going to have 2 characteristics
  // (one to read from and another to Write to, probably on the same service)
  // these are 2 placeholder IDs for those
  final serviceUuid = Guid("12345678-1234-1234-1234-123456789012");
  final xCharUuid = Guid("0001");
  final yCharUuid = Guid("0002");
  final zCharUuid = Guid("0003");
  final cuntCharUuid = Guid("0004");

  //timer variables
  Timer? _timer;
  int _elapsedSeconds = 0;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    //////////// Retrieve all projects and set default selected project ////////////////////
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ProjectBloc projectBloc = BlocProvider.of<ProjectBloc>(context);

      projectBloc.clientGetsAllProjects();

      if (_selectedProject == null) {
        _selectedProject = projectBloc.state.projects.firstOrNull;

        setElapsedSeconds();
      }
    });


    return BlocConsumer<ProjectBloc, ProjectsState>(
       listener: (context, state) {},
       builder: (context, state) => SingleChildScrollView( // Make the whole screen scrollable if content exceeds the screen
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              /////////////////////// TOGGLE /////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 6,),
                  const Text('Manual', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 20,),
                  Switch(
                    value: isBluetooth,
                    onChanged: (bool value) {
                      setState(() {
                        isBluetooth = value;
                      });
                      },
                    activeColor: BrandColors.purpleLighter,
                  ),
                  const SizedBox(width: 20,),
                  const Text('Stitch Witch', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20),

              /////////////////BLUETOOTH TEST BUTTON/////////////////////////////
              isBluetooth ?
                  Column(
                    children: [
                      Text("BLUETOOTH ON"),
                      ElevatedButton(
                          onPressed: () async {
                            await bleConnection();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: BrandColors.purpleDark,
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text("Refresh Connection", style: TextStyle(color: Colors.white),)),
                      const SizedBox(height: 20),
                    ],
                  )
                  : const SizedBox(height: 1) ,


              ////////////////////////DROPDOWN///////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Project:', style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 15), // adds space between label and dropdown
                  Container(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                      value: _selectedProject?.id,
                      isExpanded: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: BrandColors.purpleVeryLight,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1.5),
                        ),
                      ),
                      items: state.projects.map((project) {
                        return DropdownMenuItem<String>(
                          value: project.id,
                          child: Text(project.name),
                        );
                      }).toList(),
                      onChanged: (String? selectedValue) {
                        setState(() {
                          _selectedProject = state.projects.firstWhere((project) => project.id == selectedValue);
                          setElapsedSeconds();
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // adds space between dropdown and stitches input

//////////////////////// STITCHES/ROW////////////////////////////////////////
// COUNTING LOGIC
// User inputs stitches per row (if the user doesn't, the count works just normally and rows don't update automatically)
// Each + tap adds 1 stitch
// If input is valid (>0) and stitch count reaches a multiple of that value,the row count increases automatically

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Stitches/ row:', style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 8), // adds space between label and input field
                  SizedBox(
                    height: 40,
                    width: 90,
                    child: TextField(
                      controller: stitchesPerRowController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: BrandColors.purpleVeryLight,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: BrandColors.purpleLight, width: 1.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),


              //////////////////////////////// STITCHES CONTAINER////////////////////////////////////////////
              _buildLargeCounter(
                context: context,
                label: 'Stitches',
                value: _selectedProject?.stitch.toString() ?? '-1',
                color: BrandColors.purpleLighter, // color for the container (background)
                buttonColor: BrandColors.purpleLightish, // color for Stitches buttons (inside)
                onIncrement: () {
                  setState(() {
                    _selectedProject?.stitch++;
                    int? stitchesPerRow = int.tryParse(stitchesPerRowController.text);
                    if (stitchesPerRow != null && stitchesPerRow > 0) {
                      if ((_selectedProject?.stitch ?? -1) % stitchesPerRow == 0) {
                        _selectedProject?.row++;
                      }
                    }
                  });
                },
                onDecrement: () {
                  setState(() {
                    if ((_selectedProject?.stitch ?? -1) > 0) _selectedProject?.stitch--;
                  });
                },
              ),
              const SizedBox(height: 10),

              /////////////////////////////// ROWS CONTAINER /////////////////////////////////////////////
              _buildLargeCounter(
                context: context,
                label: 'Rows',
                value: _selectedProject?.row.toString() ?? '-1',
                color: BrandColors.purpleSoft, // color for the container (background)
                buttonColor: BrandColors.purpleMedium, // color for Rows buttons (inside)
                onIncrement: () => setState(() => _selectedProject?.row++),
                onDecrement: () => setState(() {
                  if ((_selectedProject?.row ?? -1) > 0) _selectedProject?.row--;
                }),
              ),
              const SizedBox(height: 20),

              ///////////////////////////////////// TIMER ///////////////////////////////
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isRunning ? _stopTimer() : _startTimer();
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                  decoration: BoxDecoration(
                    color: BrandColors.purpleLightish,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _isRunning ? Icons.pause : Icons.play_arrow,
                        color: Colors.deepPurple,
                        size: 50,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _formatDuration(_elapsedSeconds),
                        style: const TextStyle(fontSize: 27),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              /////////////////////////////// SAVE BUTTON /////////////////////////////////////////
              ElevatedButton(
                onPressed: () {
                  if (_selectedProject == null) return;

                  UpdateProjectDto updateProjectDto = UpdateProjectDto(
                      id: _selectedProject!.id,
                      name: _selectedProject!.name,
                      stitch: _selectedProject!.stitch,
                      row: _selectedProject!.row,
                      tagsDtos: [],
                      time: double.parse(_elapsedSeconds.toString()));

                  BlocProvider.of<ProjectBloc>(context).clientUpdatesProject(updateProjectDto);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: BrandColors.purpleDark,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Save Count',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setElapsedSeconds() {
    _elapsedSeconds = int.parse(_selectedProject?.time?.toString() ?? '0');
  }

  // Starts the timer and adds _elapsedSeconds every second
  void _startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _elapsedSeconds++;
      });
    });
  }

  //Stops the timer
  void _stopTimer() {
    _isRunning = false;
    _timer?.cancel();
  }

  // Formatting the time
  String _formatDuration(int totalSeconds) {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;
    return '${_twoDigits(hours)}:${_twoDigits(minutes)}:${_twoDigits(seconds)}';
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  ///////// Widget for large counter cards (stitches and rows) with floating buttons///////////
  ///////////////////////////////// it can be reused//////////////////////////////////////////
  Widget _buildLargeCounter({
    required BuildContext context,
    required String label,
    required String value,
    required Color color,
    required Color buttonColor,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 300,
          height: 160,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
                Text(value, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)), // Bigger text
              ],
            ),
          ),
        ),

        Positioned(
          left: 0,
          child: _buildBigRoundButton(icon: Icons.remove, color: buttonColor, onPressed: onDecrement),
        ),
        Positioned(
          right: 0,
          child: _buildBigRoundButton(icon: Icons.add, color: buttonColor, onPressed: onIncrement),
        ),
      ],
    );
  }

  ////////////////////////// ROUNDED BUTTONS (+,-)////////////////////////////////////////
  Widget _buildBigRoundButton({required IconData icon, required Color color, required VoidCallback onPressed}) {
    return Container(
      width: 80,
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.black, size: 50),
        onPressed: onPressed,
      ),
    );
  }


  ////////////////////////////////////////////////////////////////
  ///////////////////////// BLUE TOOTH ///////////////////////////
  ////////////////////////////////////////////////////////////////

  //test method doing all the basic functionality
  Future<void> bleConnection() async {
    await tryConnectToBluetooth();

    //delay so that there r no errors caused by the previous process not being done
    Future.delayed(const Duration(seconds: 1));

    stitchWitch = await scanForStitchWitch();

    //delay so that there r no errors caused by the previous process not being done
    Future.delayed(const Duration(seconds: 4));


    print(" ---------   CONNECTING   -----------");
    print(stitchWitch.remoteId);
    await connectToDevice(stitchWitch);

    //delay so that there r no errors caused by the previous process not being done
    Future.delayed(const Duration(seconds: 6));

    //await getCharacteristic(characteristic1UUID, stitchWitch);

    await getCharacteristicAndSubscribe(xCharUuid.toString(), stitchWitch);
    await getCharacteristicAndSubscribe(yCharUuid.toString(), stitchWitch);
    await getCharacteristicAndSubscribe(zCharUuid.toString(), stitchWitch);



    // await writeStitchCount(stitchWitch, 200, characteristic2UUID); //check serial plotter on Arduino IDE to see if value was recieved

  }


  ////////// CONNECT /////////////
  Future<void> tryConnectToBluetooth() async {
    //check if bluetooth is supported on this device
    if(await FlutterBluePlus.isSupported == false){
      print("BLUETOOTH NOT SUPPORTED DUMMY");
      return;
    }

    //check if bluetooth is on or not
    var subscription = FlutterBluePlus.adapterState.listen((BluetoothAdapterState state) {
      print(state);
      if(state == BluetoothAdapterState.on){
        scanForStitchWitch();
      } else {
        //todo actually implement error handling
        print("BLUETOOTH ISN'T ON DUMMY");
      }
    });

    //turn on ourselves if we can
    if(!kIsWeb && Platform.isAndroid){
      await FlutterBluePlus.turnOn();
    }

    //cancel to prevent duplicate listeners
    subscription.cancel();
  }

  Future<void> connectToDevice(BluetoothDevice device) async{

    var subscription = device.connectionState.listen((BluetoothConnectionState state) async {
      if(state == BluetoothConnectionState.disconnected){
        // 1. typically, start a periodic timer that tries to
        //    reconnect, or just call connect() again right now
        // 2. you must always re-discover services after disconnection!
        print("${device.disconnectReason?.code} ${device.disconnectReason?.description}");

      }
    });

    //delayed = cancel after small delay, ensure connection state listener
    // receives "disconnected" event
    // next = stream will be canceled on *next* disconnection, not this one. good
    // if you set up subscriptions before you connect to device
    device.cancelWhenDisconnected(subscription, delayed: true, next: true);

    await device.connect();

    //await device.disconnect();

    subscription.cancel();

  }



  //////////// SCAN ////////////////
  Future<BluetoothDevice> scanForStitchWitch() async {

    //variable is not initialized so can't be used, not sure hoW to initialize it
    //BluetoothDevice latestDevice;
    List<BluetoothDevice> devices = [];

    //listen for scan results
    var subscription = FlutterBluePlus.onScanResults.listen((results) {
      if(results.isNotEmpty){
        ScanResult r = results.last; //latest result
        //latestDevice = r.device;
        print("${r.device.id} : ${r.advertisementData.advName} found ~!!");

        if(!devices.contains(r.device)){
          devices.add(r.device);
        }

      }
    },
        onError: (e) => print(e)
    );

    //cancel subscription when scanning stops
    FlutterBluePlus.cancelWhenScanComplete(subscription);

    //wait for bluetooth state enabled & permission granted
    await FlutterBluePlus.adapterState.where((val) => val == BluetoothAdapterState.on).first;


    //start scan for devices With name Stitch Witch
    await FlutterBluePlus.startScan(
      //withServices:[Guid("180D")], // match any of the specified services
        withNames:["Stitch Witch"], // *or* any of the specified names
        timeout: Duration(seconds:5)
    );

    //wait for scanning to stop
    await FlutterBluePlus.isScanning.where((val) => val == false).first;

    //there can be multiple devices but for noW We just return the first one
    return devices.first;
  }

  ////////////// READ (something I can't do) //////////////////

  Future<void> getCharacteristicAndSubscribe(String UUID, BluetoothDevice device) async{
    // discover services (which contain characteristics)
    List<BluetoothService> services = await device.discoverServices();
    services.forEach( (service) async {

      try {
        // discover services (which contain characteristics)
        List<BluetoothService> services = await device.discoverServices();
        bool characteristicFound = false;

        for (BluetoothService service in services) {
          print("SERVICE: ${service.uuid}");

          // Check all characteristics in this service
          for(BluetoothCharacteristic c in service.characteristics) {
            // print("  CHARACTERISTIC: ${c.uuid}");
            // print("  PROPERTIES: read=${c.properties.read}, notify=${c.properties.notify}, write=${c.properties.write}");

            if(c.uuid.toString().toLowerCase() == UUID.toLowerCase()){
              // print("✅ Found characteristic ${UUID}");
              characteristicFound = true;
              await subscribeToCharacteristic(c);
              break;
            }
          }

          if (characteristicFound) break;
        }

        if (!characteristicFound) {
      print("❌ [$UUID] Characteristic not found.");
    }

  } catch (e) {
  print("Error in getCharacteristicAndSubscribe: $e");
  }
  });
  }
  //so We can listen for any neW values (on Notify)
  Future<void> subscribeToCharacteristic(BluetoothCharacteristic characteristic) async {
    //code to be executed When the characteristic gets a neW value (notify called)
    final subscription = characteristic.onValueReceived.listen((value) {
      // print("RECEIVING NEW VALUE FOR ${characteristic.uuid}!!!!!!!!!!");

      // Convert bytes back to int16_t (2 bytes, little endian)
      if (value.length >= 2) {
        int intValue = value[0] | (value[1] << 8);
        // Handle signed 16-bit values
        if (intValue > 32767) {
          intValue = intValue - 65536;
        }
        print("CHARACTERISTIC ${characteristic.uuid}: $intValue");

        processSensorData(characteristic.uuid.toString(), intValue);

      } else if (value.length == 1) {
        print("CHARACTERISTIC ${characteristic.uuid}: ${value[0]}");
      } else {
        print("RAW BYTES: $value");
      }

    });

    //subscribe
    await characteristic.setNotifyValue(true); //so we can get notified of any new values

  }

  void processSensorData(String characteristicUuid, int value) {
    // Map the characteristic UUIDs to axis values
    if (characteristicUuid.contains("0001")) { // X axis
      currentX = value;
    } else if (characteristicUuid.contains("0002")) { // Y axis
      currentY = value;
    } else if (characteristicUuid.contains("0003")) { // Z axis
      currentZ = value;
    }

    // Check for stitch when we have all three axis values
    if (currentX != null && currentY != null && currentZ != null) {
      bool stitchDetected = stitchDetector.processAccelerometerData(
          currentX!,
          currentY!,
          currentZ!
      );

      if (stitchDetected) {
        onStitchDetected();
      }
    }
  }

  void onStitchDetected() {
  //   setState(() {
  //     _selectedProject?.stitch++;
  //
  //     // Auto-increment rows if stitches per row is set
  //     int? stitchesPerRow = int.tryParse(stitchesPerRowController.text);
  //     if (stitchesPerRow != null && stitchesPerRow > 0) {
  //       if ((_selectedProject?.stitch ?? -1) % stitchesPerRow == 0) {
  //         _selectedProject?.row++;
  //       }
  //     }
  //   });

    print("🧶 STITCH COUNTED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
  }
}




  ////////////// WRITE /////////////////////////////////////////

  //this is for fetching the characteristic, then it writes to it
  Future<void> writeStitchCount(BluetoothDevice device, int stitchCount, String charUUID ) async {
    List<BluetoothService> services = await device.discoverServices();
    services.forEach( (service) async {

      // Reads all characteristics
      var characteristics = service.characteristics;
      for(BluetoothCharacteristic c in characteristics) {
        if (c.properties.read) {
          List<int> value = await c.read();
          // print("CHARACTERISTIC: ${c.uuid}");
          // print("IN SERVICE: ${service.uuid}");
          // print(value);

          if(c.uuid.toString() == charUUID.toLowerCase()){
            writeToCharacteristic(c, stitchCount);
          }

        }
      }

    } );

    //this code may look simpler, but it doesn't work
    /*BluetoothCharacteristic char = await getCharacteristic(charUUID, device);

    writeToCharacteristic(char, stitchCount);*/

  }

  //method that actually does the writing
  Future<void> writeToCharacteristic(BluetoothCharacteristic c, int stitchCount) async {
    List<int> message = numToASCIIHexCode(stitchCount);

    //refer to ASCII tables' hex codes for what to write
    //https://www.rapidtables.com/code/text/ascii-table.html
    await  c.write(message);
    //await  c.write([0x30]);

  }

  //ASCII TABLE CONVERSION STUFF
  List<int> numToASCIIHexCode(int startNumber) {

    int n = startNumber;
    List<int> digits = <int>[]; //each digit of the number submitted
    List<int> returnList = <int>[];

    //getting each digit of number (e.g. 114 = 1, 1, 4)
    while (n > 0){
      digits.add(n % 10);
      //print(n % 10);
      n = (n / 10).floor();
      print(n);
    }

    print("OUT OF LOOP");
    print(digits.length);
    //converting each digit to the final string
    for(var value in digits){

      // 0x = just how return numbers are formatted
      // +30 = on the ascii table, the number 0 has a hex code of 30
      // so each number (0-9) would be itself plus 30
      returnList.add(int.parse("0x${value+30}"));
      print("DOING SOMETHING");
      print(value.toString());
    }

    return returnList.reversed.toList();
  }





