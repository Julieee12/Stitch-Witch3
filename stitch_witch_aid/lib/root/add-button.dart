import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

import '../inventory/inventory-dialog.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => InventoryDialog(),
        );
      },
      backgroundColor: BrandColors.purpleDark,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}