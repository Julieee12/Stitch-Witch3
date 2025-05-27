import 'package:stitch_witch_aid/projects/projects-model.dart';

class ProjectsState {
  final List<ProjectItemModel> projects;
  late List<ProjectItemModel> filteredProjects;

  ProjectsState({required this.projects, required this.filteredProjects});

  void setFilteredProjects(List<ProjectItemModel> newFilteredProjects) {
    filteredProjects = newFilteredProjects;
  }

  static ProjectsState empty() =>
      ProjectsState(projects: List.empty(growable: true), filteredProjects: List.empty(growable: true));
}