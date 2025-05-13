
import 'package:dart_mappable/dart_mappable.dart';


part 'inventory-item-dto.mapper.dart';

@MappableClass()
class InventoryItemDto with InventoryItemDtoMappable{
  final String name;
  final String? description;
  final String? picurl;

  InventoryItemDto({
    required this.name,
    required this.description,
    required this.picurl,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'picture': picurl,
    };
  }
}
