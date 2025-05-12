import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int stitchesCount = 0;
  int currentRow = 0;
  final TextEditingController stitchesPerRowController = TextEditingController();

  @override
  void dispose() {
    stitchesPerRowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Make the whole screen scrollable if content exceeds the screen
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height:20),

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
                      value: 'Wool Scarf',
                      items: const [
                        DropdownMenuItem(value: 'Wool Scarf', child: Text('Wool Scarf')),
                        DropdownMenuItem(value: 'Blanket', child: Text('Blanket')),
                      ],
                      onChanged: (_) {},
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
              value: stitchesCount.toString(),
              color: BrandColors.purpleLighter, // color for the container (background)
              buttonColor: BrandColors.purpleLightish, // color for Stitches buttons (inside)
              onIncrement: () {
                setState(() {
                  stitchesCount++;
                  int? stitchesPerRow = int.tryParse(stitchesPerRowController.text);
                  if (stitchesPerRow != null && stitchesPerRow > 0) {
                    if (stitchesCount % stitchesPerRow == 0) {
                      currentRow++;
                    }
                  }
                });
              },
              onDecrement: () {
                setState(() {
                  if (stitchesCount > 0) stitchesCount--;
                });
              },
            ),
            const SizedBox(height: 10),

            /////////////////////////////// ROWS CONTAINER /////////////////////////////////////////////
            _buildLargeCounter(
              context: context,
              label: 'Rows',
              value: currentRow.toString(),
              color: BrandColors.purpleSoft,// color for the container (background)
              buttonColor: BrandColors.purpleMedium, // color for Rows buttons (inside)
              onIncrement: () => setState(() => currentRow++),
              onDecrement: () => setState(() {
                if (currentRow > 0) currentRow--;
              }),
            ),
            const SizedBox(height: 20),

            ///////////////////////////////////// TIMER ///////////////////////////////
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                color: BrandColors.purpleLightish,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.play_arrow, color: Colors.deepPurple, size: 50,),
                  SizedBox(width: 8),
                  Text('00:47:23', style: TextStyle(fontSize: 27)),
                ],
              ),
            ),
            const SizedBox(height: 20),

            /////////////////////////////// SAVE BUTTON /////////////////////////////////////////
            ElevatedButton(
              onPressed: () {},
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
    );
  }

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
