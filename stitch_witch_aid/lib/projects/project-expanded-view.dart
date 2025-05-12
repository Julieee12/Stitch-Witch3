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
    ProjectItemModel projectToUpdate = BlocProvider.of<ProjectBloc>(context).state.projects[widget.projectIndexToUpdate];

    return BlocConsumer<ProjectBloc, ProjectsState>(
      listener: (context, state) {setState(() {});},
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(projectToUpdate.name),
          backgroundColor: BrandColors.purpleSoft,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              if (projectToUpdate.picurl != null)
                Image.network(projectToUpdate.picurl!),
              SizedBox(height: 20),
              // description
              Text(
                projectToUpdate.description ?? 'No description available',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              //yarn
              Text(
                'Yarn: ${projectToUpdate.yarn ?? 'N/A'}',
                style: TextStyle(fontSize: 14),
              ),
              //hook
              Text(
                'Hook: ${projectToUpdate.hook ?? 'N/A'}',
                style: TextStyle(fontSize: 14),
              ),
              //time
              Text(
                'Time: ${projectToUpdate.time ?? 'N/A'}',
                style: TextStyle(fontSize: 14),
              ),
              TextButton(
                  onPressed: () {
                    BlocProvider.of<ProjectBloc>(context).clientDeletesProject(projectToUpdate.id);

                    Navigator.of(context).pop();
                  },
                  child: Text('Delete')
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => UpdateProjectDialog(projectToUpdate: projectToUpdate));
                  },
                  child: Text('Update')
              )
            ],
          ),
        ),
      ),
    );
  }
}
