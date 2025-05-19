import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';

class ProjectsItem extends StatefulWidget {
  final ProjectItemModel item;
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
              fit: BoxFit.contain,
            )
                :Image.asset(
              'assets/projplace.png',
                  height: 80,
                  width: 80,
                fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Text(
              widget.item.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}