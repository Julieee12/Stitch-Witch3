import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/projects/project-bloc.dart';
import 'package:stitch_witch_aid/projects/project-update-dialog.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';

import '../root/brand-colors.dart';
import '../tag/all-tags.dart';
import '../tag/tags-model.dart';

class ProjectExpandedView extends StatefulWidget {
  final ProjectItemModel selectedProject;

  const ProjectExpandedView({Key? key, required this.selectedProject}) : super(key: key);

  @override
  State<ProjectExpandedView> createState() => _ProjectExpandedViewState();
}

class _ProjectExpandedViewState extends State<ProjectExpandedView> {
  late List<TagDto> tags = [];
  late TagDto selectedTag;

  @override
  void initState() {
    getAllProjectTagTypes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectBloc, ProjectsState>(
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) => Scaffold(
        backgroundColor: BrandColors.purpleExtraLight,
        appBar: AppBar(
          title: Text(
            widget.selectedProject.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: BrandColors.purpleSoft,
          foregroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<ProjectBloc>(context).clientDeletesProject(widget.selectedProject.id);
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
                        child: UpdateProjectDialog(projectToUpdate: widget.selectedProject),
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
                    child: widget.selectedProject.picurl != null && widget.selectedProject.picurl!.isNotEmpty
                        ? Image.network(
                      widget.selectedProject.picurl!,
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
                    widget.selectedProject.description ?? "No description available",
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
                    "Yarn: ${widget.selectedProject.yarn ?? 'N/A'}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Hook: ${widget.selectedProject.hook ?? 'N/A'}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Time spent on project: ${widget.selectedProject.time ?? 'N/A'}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                  ),
                  const SizedBox(height: 15),
                  ////////////// TAGS /////////////////
                  Row(

                    children: [
                      Text(
                        "add tag:",
                        style: TextStyle(
                            fontSize: 16,
                            color: BrandColors.purpleDark),
                      ),
                      Container(
                        width: 80,
                        child: DropdownButtonFormField<String>(
                          value: selectedTag.tagTypeId,
                          isExpanded: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: BrandColors.purpleVeryLight,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: BrandColors.purpleLightish, width: 1.5),
                            ),
                          ),
                          items: tags.map((currentTag) {
                            return DropdownMenuItem<String>(
                              value: currentTag.tagTypeId,
                              child: Text(currentTag.typename),
                            );
                          }).toList(),
                          onChanged: (String? selectedValue) {
                            setState(() {
                              selectedTag = tags.firstWhere((tag) => tag.tagTypeId == selectedValue);
                              print(selectedTag);
                            });
                          },
                        ),
                      ),
                      OutlinedButton(
                          onPressed: () {

                            BlocProvider.of<ProjectBloc>(context).clientAddsTagToProject(widget.selectedProject.id, selectedTag.tagTypeId);

                          },
                          child: Text("Add")),
                    ],
                  ),

                  // "TAGS" TEXT
                  Text(
                    "Tags:",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.purpleDark),
                  ),
                  const SizedBox(height: 10),

                  //ALL OF THE ACTUAL TAGS
                  widget.selectedProject.tags != null && widget.selectedProject.tags!.isNotEmpty ?
                  Container(
                    height: 100,
                    child: GridView.count(
                      crossAxisCount: widget.selectedProject.tags!.length,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 2,
                      childAspectRatio: 5,
                      children: List.generate(widget.selectedProject.tags!.length, (index) {
                        return ButtonTheme(
                          height: 5,
                          minWidth: 10,
                          child: FilledButton(
                            onPressed: () {
                              setState(() {

                                context.read<ProjectBloc>().clientDeletesTagFromProject(widget.selectedProject.id, widget.selectedProject.tags[index].tagTypeId);
                              });
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: BrandColors.purpleLight,
                            ),
                            child: Text(
                              widget.selectedProject.tags![index].typename,
                              style: TextStyle(fontSize: 15,),),
                          ),
                        );
                      }),
                    ),
                  )
                      : const SizedBox(height: 1,),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  //gets the tag type variables for each tag name
  void getAllProjectTagTypes(){
    if(TagVariables.allTags.isNotEmpty){
      // if the tag (variable) has the same name as any
      // of the strings in projectTags, add it to the list
      TagVariables.projectTags.forEach((tagName) {
        tags.add(
            TagVariables.allTags.firstWhere(
                    (tag) => tag.typename == tagName));

      });

      tags.forEach((tag)  {
        print(tag.typename);
      });

      selectedTag = tags.first;
    } else{
      print("TAGS R EMPTY!! EMPTY !!!!! MEPTY!!!!!!!!!! EMPOTY!!!!!!!!");
    }
  }

}
