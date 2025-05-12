import 'package:dart_mappable/dart_mappable.dart';

part 'projects-model.mapper.dart';

@MappableClass()
class ProjectItemModel with ProjectItemModelMappable {
  String id;
  String name;
  String? tag;
  int stitch;
  int row;
  String? picurl;
  String? description;
  String? yarn;
  String? hook;
  double? time;

  ProjectItemModel(
      this.id,
      this.name,
      this.tag,
      this.stitch,
      this.row,
      this.picurl,
      this.description,
      this.yarn,
      this.hook,
      this.time);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'tag': tag,
      'picture': picurl,
    };
  }
}

@MappableClass()
class CreateNewProjectDto with CreateNewProjectDtoMappable {
  String name;
  String? tag;
  int stitch;
  int row;
  String? picurl;
  String? description;
  String? yarn;
  String? hook;
  double? time;

  CreateNewProjectDto({
    required this.name,
    this.tag,
    required this.stitch,
    required this.row,
    this.picurl,
    this.description,
    this.yarn,
    this.hook,
    this.time});
}
