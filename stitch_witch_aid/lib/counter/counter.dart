import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

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
          const SizedBox(height: 30),

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
          const SizedBox(height: 22), // adds space between dropdown and stitches input


          //////////////////////// STITCHES/ROW////////////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Stitches/ row:', style: TextStyle(fontSize: 16)),
              const SizedBox(width: 8), // adds space between label and input field
              SizedBox(
                height: 30,
                width: 80,
                child: TextField(
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
                  controller: TextEditingController(text: '20'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),

          //////////////////////////////// STITCHES CONTAINER////////////////////////////////////////////
          _buildLargeCounter(
            context: context,
            label: 'Stitches',
            value: '26',
            color: BrandColors.purpleLighter, // color for the container (background)
            buttonColor: BrandColors.purpleLightish, // color for Stitches buttons (inside)
          ),
          const SizedBox(height: 40),

         /////////////////////////////// ROWS CONTAINER /////////////////////////////////////////////
          _buildLargeCounter(
            context: context,
            label: 'Rows',
            value: '12/20',
            color: BrandColors.purpleSoft,// color for the container (background)
            buttonColor: BrandColors.purpleMedium, // color for Rows buttons (inside)
          ),
          const SizedBox(height: 40),

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
          const SizedBox(height: 30),

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
          child: _buildBigRoundButton(icon: Icons.remove, color: buttonColor),
        ),
        Positioned(
          right: 0,
          child: _buildBigRoundButton(icon: Icons.add, color: buttonColor),
        ),
      ],
    );
  }

  ////////////////////////// ROUNDED BUTTONS (+,-)////////////////////////////////////////
  Widget _buildBigRoundButton({required IconData icon, required Color color}) {
    return Container(
      width: 80,
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.black, size: 50),
        onPressed: () {},
      ),
    );
  }
}
