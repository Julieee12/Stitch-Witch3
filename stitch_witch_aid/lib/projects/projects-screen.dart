import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/projects/project-bloc.dart';
import 'package:stitch_witch_aid/projects/project-expanded-view.dart';
import 'package:stitch_witch_aid/projects/projects-item.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';
import '../root/add-button.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProjectBloc>(context).clientGetsAllProjects();
    });

    return BlocConsumer<ProjectBloc, ProjectsState>(
      listener: (context, state) {},
      builder: (context, state) => Container(
        color: BrandColors.purpleExtraLight,
        child: Stack(
          children: [
            Tags(["pr", "oje", "cts"]),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TopSearchBar(caller: this),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 15,
                children: List.generate(state.projects.length, (index) {
                  final project = state.projects[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProjectExpandedView(project: project),
                        ),
                      );
                    },
                    child: ProjectsItem(
                      item: ProjectItemModel(
                        project.id,
                        project.name,
                        project.tag,
                        project.stitch,
                        project.row,
                        project.picurl,
                        project.description,
                        project.yarn,
                        project.hook,
                        project.time,
                      ),
                      color: BrandColors.purpleSoft,
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: AddButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
