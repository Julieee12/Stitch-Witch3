import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/blocs/project-bloc.dart';
import 'package:stitch_witch_aid/projects/projects-item.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/states/projects-state.dart';
import '../root/add-button.dart';
import '../root/brand-colors.dart';
import '../root/search-bar.dart';
import '../root/tags.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProjectBloc>().clientGetsAllProjects();
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
                children:
                  List.generate(state.projects.length, (index) {
                  return ProjectsItem(item: ProjectItemModel(
                      id:  state.projects[index].id,
                      name: state.projects[index].name,
                      description: state.projects[index].description,
                      tag: state.projects[index].tag,
                      picurl: state.projects[index].picurl,
                      stitch: state.projects[index].stitch,
                      row: state.projects[index].row,
                      time: state.projects[index].time,
                      yarn: state.projects[index].yarn,
                      hook: state.projects[index].hook),
                      color: BrandColors.purpleSoft);
                }),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: AddButton(),
            )
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
