import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';

//part 'item-state.mapper.dart';

//@MappableClass()
class ItemState {
  final List<InventoryItemModel> items;
  late List<InventoryItemModel> filteredItems;


   ItemState({required this.items, required this.filteredItems});

  void setFilteredItems(List<InventoryItemModel> newFilteredItems){
    filteredItems = newFilteredItems;
  }

  static ItemState empty() =>
      ItemState(items: List.empty(growable: true), filteredItems: List.empty(growable: true));
}