

import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/events/events.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';

part 'server-sends-all-items-event.mapper.dart';

@MappableClass(discriminatorValue: ServerSendsAllItemsEvent.name)
class ServerSendsAllItemsEvent extends BaseEvent with ServerSendsAllItemsEventMappable {
  static const String name = "ServerSendsAllItems";
  final List<InventoryItemModel> items;

  ServerSendsAllItemsEvent({required this.items, required super.eventType, required super.requestId});
}