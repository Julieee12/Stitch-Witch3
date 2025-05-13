import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/tag/tags-model.dart';

part 'projects-model.mapper.dart';

@MappableClass()
class ProjectItemModel with ProjectItemModelMappable {
  String id;
  String name;
  int stitch;
  int row;
  String? picurl;
  String? description;
  String? yarn;
  String? hook;
  double? time;
  List<TagDto> tags = [];

  ProjectItemModel({
      required this.id,
      required this.name,
      required this.stitch,
      required this.row,
      this.picurl,
      this.description,
      this.yarn,
      this.hook,
      this.time,
      required this.tags});
}

@MappableClass()
class CreateNewProjectDto with CreateNewProjectDtoMappable {
  String name;
  String? picurl;
  String? description;
  String? yarn;
  String? hook;
  List<TagDto> tagDtos = [];

  CreateNewProjectDto({
    required this.name,
    this.picurl,
    this.description,
    this.yarn,
    this.hook,
    required this.tagDtos});
}

@MappableClass()
class UpdateProjectDto with UpdateProjectDtoMappable {
  String id;
  String name;
  String? tag;
  int stitch;
  int row;
  String? picurl;
  String? description;
  String? yarn;
  String? hook;

  UpdateProjectDto({
    required this.id,
    required this.name,
    this.tag,
    required this.stitch,
    required this.row,
    this.picurl,
    this.description,
    this.yarn,
    this.hook});
}
