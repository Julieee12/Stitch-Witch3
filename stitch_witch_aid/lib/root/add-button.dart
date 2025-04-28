import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xFF104F4D),
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}