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
  String? time;

  ProjectItemModel({
    required this.id,
    required this.name,
    required this.tag,
    required this.stitch,
    required this.row,
    required this.picurl,
    required this.description,
    required this.yarn,
    required this.hook,
    required this.time,
  });

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
