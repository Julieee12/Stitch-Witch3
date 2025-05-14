import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  //timer variables
  Timer? _timer;
  int _elapsedSeconds = 0;
  bool _isRunning = false;

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

              /////////////////////////////////////// TOGGLE /////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 6,),
                  const Text('Manual', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 20,),
                  Switch(
                    value: true,
                    onChanged: (_) {},
                    activeColor: BrandColors.purpleLighter,
                  ),
                  const SizedBox(width: 20,),
                  const Text('Stitch Witch', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20),

              ////////////////////////DROPDOWN///////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Project:', style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 15), // adds space between label and dropdown
                  Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: BrandColors.purpleVeryLight,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedProject?.id,
                        items: List.generate(state.projects.length, (index) {
                          return DropdownMenuItem(
                              value: state.projects[index].id,
                              child: Text(state.projects[index].name)
                          );
                        }),
                        onChanged: (String? selectedValue) {
                          setState(() {
                            _selectedProject = state.projects.firstWhere((project) => project.id == selectedValue);

                            setElapsedSeconds();
                          });
                        },
                      ),
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
                    height: 35,
                    width: 80,
                    child: TextField(
                      controller: stitchesPerRowController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: BrandColors.purpleVeryLight,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
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
                      tagsDtos: _selectedProject!.tags,
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
    _elapsedSeconds = int.parse(_selectedProject?.time.toString() ?? '0');
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
}
