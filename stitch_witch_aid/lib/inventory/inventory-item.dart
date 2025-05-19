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
    final String? picUrl = widget.item.picurl;
    final bool hasImage = picUrl != null && picUrl.isNotEmpty;
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: hasImage
            ? Image.network(
            picUrl,
          height: 80,
          fit: BoxFit.cover,
          )
          : Image.asset(
            'assets/invplace.png',
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
    ),
          const SizedBox(height: 10),
          Text(widget.item.name),


        ],
      ),
    );
  }
}