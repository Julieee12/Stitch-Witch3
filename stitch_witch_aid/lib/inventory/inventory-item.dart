import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';

class InventoryItem extends StatefulWidget {
  final InventoryItemModel item;
  final Color color;

  const InventoryItem({required this.item, required this.color, super.key});

  @override
  State<StatefulWidget> createState() {
    return InventoryItemState();
  }

}

class InventoryItemState extends State<InventoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.item.id),
          Text(widget.item.name),
          Text(widget.item.description != null ? widget.item.description! : " "),
        ],
      ),
    );
  }
}