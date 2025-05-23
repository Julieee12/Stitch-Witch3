
import 'package:dart_mappable/dart_mappable.dart';

import '../tag/tags-model.dart';

part 'inventory-model.mapper.dart';

@MappableClass()
class InventoryItemModel with InventoryItemModelMappable{
  final String id;
  final String name;
  final String? description;
  final String? picurl;
  final List<TagDto>? tags;

  InventoryItemModel( {
    required this.id,
    required this.name,
    required this.description,
    required this.picurl,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'picture': picurl,
      'tags' : tags,
    };
  }
}


@MappableClass()
class UpdateItemDto with UpdateItemDtoMappable{
  final String id;
  final String name;
  final String? description;
  final String? picurl;

  UpdateItemDto({
    required this.id,
    required this.name,
    required this.description,
    required this.picurl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'picture': picurl,
    };
  }
}
