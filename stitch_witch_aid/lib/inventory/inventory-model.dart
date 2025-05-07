
import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';

part 'inventory-model.mapper.dart';

@MappableClass()
class InventoryItemModel with ProjectItemModelMappable{
  final String id;
  final String name;
  final String description;
  final String tag;
  final String picture;

  InventoryItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.tag,
    required this.picture,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'tag': tag,
      'picture': picture,
    };
  }
}
