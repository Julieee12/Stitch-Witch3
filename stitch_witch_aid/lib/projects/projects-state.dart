import 'package:stitch_witch_aid/projects/projects-model.dart';

class ProjectsState {
  final List<ProjectItemModel> projects;
  late List<ProjectItemModel> filteredProjects;

  ProjectsState({required this.projects, required this.filteredProjects});

  void setFilteredProjects(List<ProjectItemModel> newFilteredProjects) {
    filteredProjects = newFilteredProjects;
  }

  void searchProjects(String query) {
    List<ProjectItemModel> searchedProjects = [];

    for (var project in projects) {
      if (project.search(query) != null) searchedProjects.add(project);
    }

    setFilteredProjects(searchedProjects);
  }

  static ProjectsState empty() =>
      ProjectsState(projects: List.empty(growable: true), filteredProjects: List.empty(growable: true));
}