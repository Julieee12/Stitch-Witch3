

import 'package:stitch_witch_aid/inventory/inventory-model.dart';

class ItemState {
  final List<InventoryItemModel> items;


  const ItemState({required this.items});

  static ItemState empty() =>
      ItemState(items: List.empty());
}