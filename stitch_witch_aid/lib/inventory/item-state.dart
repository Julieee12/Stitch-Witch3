import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/inventory/item-tag-model.dart';

//part 'item-state.mapper.dart';

//@MappableClass()
class ItemState {
  final List<InventoryItemModel> items;
  final List<ItemTagModel>? allTags;
  final List<ItemTagModel>? tagsForItem;


  const ItemState({required this.items, this.allTags, this.tagsForItem,});

  static ItemState empty() =>
      ItemState(items: List.empty(growable: true), allTags: List.empty(growable: true));
}