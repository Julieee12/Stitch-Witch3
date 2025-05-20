import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/projects/project-bloc.dart';
import 'package:stitch_witch_aid/projects/project-update-dialog.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';

import '../root/brand-colors.dart';

class ProjectExpandedView extends StatefulWidget {
  final int projectIndexToUpdate;

  const ProjectExpandedView({Key? key, required this.projectIndexToUpdate}) : super(key: key);

  @override
  State<ProjectExpandedView> createState() => _ProjectExpandedViewState();
}

class _ProjectExpandedViewState extends State<ProjectExpandedView> {
  @override
  Widget build(BuildContext context) {
    ProjectItemModel projectToUpdate =
    BlocProvider.of<ProjectBloc>(context).state.projects[widget.projectIndexToUpdate];

    return BlocConsumer<ProjectBloc, ProjectsState>(
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) => Scaffold(
        backgroundColor: BrandColors.purpleExtraLight,
        appBar: AppBar(
          title: Text(
            projectToUpdate.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: BrandColors.purpleSoft,
          foregroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<ProjectBloc>(context).clientDeletesProject(projectToUpdate.id);
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 320,
                        maxHeight: 550,
                      ),
                      child: Material(
                        color: BrandColors.purpleExtraLight,
                        borderRadius: BorderRadius.circular(20),
                        child: UpdateProjectDialog(projectToUpdate: projectToUpdate),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image display
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: projectToUpdate.picurl != null && projectToUpdate.picurl!.isNotEmpty
                        ? Image.network(
                      projectToUpdate.picurl!,
                      height: 200,
                      fit: BoxFit.contain,
                    )
                        : Image.asset(
                      'assets/projplace.png',
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Description
                  Text(
                    projectToUpdate.description ?? "No description available",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),

                  // Additional Info
                  Text(
                    "Details:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: BrandColors.purpleDark,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Yarn: ${projectToUpdate.yarn ?? 'N/A'}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Hook: ${projectToUpdate.hook ?? 'N/A'}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Time spent on project: ${projectToUpdate.time ?? 'N/A'}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
