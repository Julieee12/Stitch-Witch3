

import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';



//part 'item-state.mapper.dart';

@MappableClass()
class ItemState {
  final List<InventoryItemModel> items;


  const ItemState({required this.items});

  static ItemState empty() =>
      ItemState(items: List.empty());
}