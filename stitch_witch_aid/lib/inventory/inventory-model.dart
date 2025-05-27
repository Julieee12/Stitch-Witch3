
import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/abstractions/abstract-searchable.dart';

import '../tag/tags-model.dart';

part 'inventory-model.mapper.dart';

@MappableClass()
class InventoryItemModel extends AbstractSearchable with InventoryItemModelMappable{
  final String id;
  final String name;
  final String? description;
  final String? picurl;
  final List<TagDto> tags;

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

  @override
  InventoryItemModel? search(String query) {
    var searchableFields = '$id$name$description'.toLowerCase();
    var lowercaseQuery = query.toLowerCase();
    return searchableFields.contains(lowercaseQuery) ? this : null;
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
