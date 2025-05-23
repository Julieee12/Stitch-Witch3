import 'package:dart_mappable/dart_mappable.dart';

part 'tags-model.mapper.dart';

@MappableClass()
class TagDto with TagDtoMappable {
  String tagTypeId;
  String typeName;

  TagDto({required this.tagTypeId, required this.typeName});
}