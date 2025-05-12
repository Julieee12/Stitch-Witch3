import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';

import '../root/brand-colors.dart';

class ProjectExpandedView extends StatelessWidget {
  final ProjectItemModel project;

  const ProjectExpandedView({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
        backgroundColor: BrandColors.purpleSoft,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Show the project image
            if (project.picurl != null)
              Image.network(project.picurl!),
            SizedBox(height: 20),
            // Show the project description
            Text(
              project.description ?? 'No description available',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Show additional project details (you can add more details if needed)
            Text(
              'Yarn: ${project.yarn ?? 'N/A'}',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Hook: ${project.hook ?? 'N/A'}',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Time: ${project.time ?? 'N/A'}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
