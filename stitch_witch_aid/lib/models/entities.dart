
import 'package:dart_mappable/dart_mappable.dart';

part 'entities.mapper.dart';


//item
@MappableClass()
class Item with ItemMappable{
  final String id;
  final String name;
  final String tagId;
  final String picUrl;
  final String description;


  const Item(
  this.tagId,
  this.picUrl,
  this.description, {
  required this.id,
  required this.name,
  });

}

//projects
@MappableClass()
class Project with ProjectMappable{
  final String id;
  final String name;
  final String tagId;
  final num stitch;
  final num row;
  final String picUrl;
  final String description;
  final String yarn;
  final String hook;
  final DateTime time;


  const Project(
      this.stitch,
      this.row,
      this.yarn,
      this.hook,
      this.time,
      this.tagId,
      this.picUrl,
      this.description, {
      required this.id,
      required this.name,
  });

}

//tag
@MappableClass()
class Tag with TagMappable{
  final String id;
  final String name;
  final String typeId;


  const Tag(
      this.name,  {
      required this.id,
      required this.typeId,
      });

}

//tag type
@MappableClass()
class TagType with TagTypeMappable{
  final String id;
  final String name;


  const TagType(
      this.name, {
      required this.id,
      });

}

//command to generate code
// dart run build_runner build