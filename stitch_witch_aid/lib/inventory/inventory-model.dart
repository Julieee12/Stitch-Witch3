
import 'package:dart_mappable/dart_mappable.dart';

part 'inventory-model.mapper.dart';

@MappableClass()
class InventoryItemModel with InventoryItemModelMappable{
  final String id;
  final String name;
  final String? description;
  final String? picurl;

  InventoryItemModel({
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


@MappableClass()
class UpdateItemDto with UpdateItemDtoMappable{
  final String id;
  final String name;
  final String? description;
  final String? image;

  UpdateItemDto({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'picture': image,
    };
  }
}
