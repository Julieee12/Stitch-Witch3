
import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/root/tags.dart';

part 'inventory-model.mapper.dart';

@MappableClass()
class InventoryItemModel with InventoryItemModelMappable{
  final String id;
  final String name;
  final String? description;
  final String? picurl;
  final List<Tags>? tags;

  InventoryItemModel( {
    required this.id,
    required this.name,
    required this.description,
    required this.picurl,
    this.tags,
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
