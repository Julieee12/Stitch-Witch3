import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

import '../blocs/project-bloc.dart';



class ProjectTags extends StatefulWidget {
  final List<String> tags;
  final refreshPage;
  final ProjectsState state;

  const ProjectTags(this.tags, {super.key, this.refreshPage, required this.state});

  @override
  State<ProjectTags> createState() => _ProjectTagsState();
}

class _ProjectTagsState extends State<ProjectTags> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: GridView.count(
            crossAxisCount: widget.tags.length,
            crossAxisSpacing: 20,
            mainAxisSpacing: 2,
            childAspectRatio: 4,
            children: List.generate(widget.tags.length, (index) {
              return createTagButton(widget.tags[index], widget.state);
            })
          )
        ),
      );
  }


  Widget createTagButton(String text, ProjectsState state){
    return ButtonTheme(
      height: 10,
      child: FilledButton(
          onPressed: () {
            setState(() {
              List<ProjectItemModel> newFilteredProjects = [];
              //if the tag is all then just show all
              if(text == "All"){
                state.filteredProjects = state.projects;
              } else {
                state.filteredProjects.forEach((proj) {
                  //if the item has tags and has tag with name
                  //searching by name is fine bc tags r hardcoded
                  if (proj.tags.isNotEmpty && proj.tags!
                      .where((tag) => tag.typename == text)
                      .isNotEmpty) {
                    newFilteredProjects.add(proj);
                    print("adding item to new list");
                  }
                }); //end of foreach

                print("changing filtered items");

                state.setFilteredProjects(newFilteredProjects);
              }

              widget.refreshPage();

            });

          },
        style: FilledButton.styleFrom(
          backgroundColor: BrandColors.purpleLight,
        ),
          child: Text(
            text,
            style: TextStyle(fontSize: 12,),),
      ),
    );
  }

}
