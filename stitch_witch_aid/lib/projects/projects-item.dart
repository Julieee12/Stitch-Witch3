import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';

class ProjectsItem extends StatefulWidget {
  final ProjectsItemModel item;
  final Color color;

  const ProjectsItem({required this.item, required this.color, super.key});

  @override
  State<StatefulWidget> createState() {
    return ProjectsItemState();
  }

}

class ProjectsItemState extends State<ProjectsItem> {
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
          Text(widget.item.description),
        ],
      ),
    );
  }
}