import 'package:dart_mappable/dart_mappable.dart';

part 'tags-model.mapper.dart';

@MappableClass()
class TagType with TagDtoMappable {
  String tagTypeId;
  String typeName;

  TagType({required this.tagTypeId, required this.typeName});
}