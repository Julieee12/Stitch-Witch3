import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

import '../blocs/Item-bloc.dart';
import 'item-state.dart';
import 'inventory-dialog.dart';

class AddItemButton extends StatelessWidget {
  final ItemState state;
  final BuildContext buildContext;

  const AddItemButton({super.key, required this.state, required this.buildContext});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => InventoryDialog(state: state, buildContext: buildContext,),
        );
      },
      backgroundColor: BrandColors.purpleDark,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}