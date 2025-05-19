
import 'package:dart_mappable/dart_mappable.dart';

part 'item-tag-model.mapper.dart';

@MappableClass()
class ItemTagModel with ItemTagModelMappable {
  final String itemId;
  final String tagId;

  ItemTagModel({required this.itemId, required this.tagId});

  Map<String, dynamic> toMap() {
    return {
      'itemId': itemId,
      'tagId': tagId,
    };
  }
}