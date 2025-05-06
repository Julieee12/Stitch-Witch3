import 'package:stitch_witch_aid/projects/projects-model.dart';

class ProjectsState {
  final List<ProjectsItemModel> projects;


  const ProjectsState({required this.projects});

  static ProjectsState empty() =>
      ProjectsState(projects: List.empty());
}