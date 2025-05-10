import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/blocs/project-bloc.dart';
import 'package:stitch_witch_aid/projects/projects-item.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/states/projects-state.dart';
//import '../root/add-button.dart';
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
                      state.projects[index].id,
                      state.projects[index].name,
                      state.projects[index].tag,
                      state.projects[index].stitch,
                      state.projects[index].row,
                      state.projects[index].picurl,
                      state.projects[index].description,
                      state.projects[index].yarn,
                      state.projects[index].hook,
                      state.projects[index].time,
                      ),
                      color: BrandColors.purpleSoft);
                }),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
                child: FilledButton(onPressed: () {}, child: Text("+"))
              //child: AddButton(context: context, state: state,),
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
