
import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/inventory/inventory-item-dto.dart';

import '../inventory/inventory-model.dart';
import '../projects/projects-model.dart';

part 'events.mapper.dart';

@MappableClass(discriminatorKey: 'eventType')
abstract class BaseEvent with BaseEventMappable {
  final String eventType;
  final String requestId;

  BaseEvent({required this.eventType, required this.requestId});
}
///////////////////////////////////
////////// Client events //////////
///////////////////////////////////


////////// Project events /////////
@MappableClass(discriminatorValue: ClientGetsAllProjectsEvent.name)
class ClientGetsAllProjectsEvent extends BaseEvent with ClientGetsAllProjectsEventMappable {
  static const String name = 'ClientGetsAllProjects';

  ClientGetsAllProjectsEvent({required super.eventType, required super.requestId});
}

///////// Item events ////////////
@MappableClass(discriminatorValue: ClientGetsAllItemsEvent.name)
class ClientGetsAllItemsEvent extends BaseEvent with ClientGetsAllItemsEventMappable {
  static const String name = "ClientGetsAllItems";

  ClientGetsAllItemsEvent({required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientCreatesNewItemEvent.name)
class ClientCreatesNewItemEvent extends BaseEvent with ClientCreatesNewItemEventMappable {
  static const String name = "ClientCreatesNewItem";
  final InventoryItemDto newItemDto;

  ClientCreatesNewItemEvent({required this.newItemDto, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientUpdatesItemEvent.name)
class ClientUpdatesItemEvent extends BaseEvent with ClientUpdatesItemEventMappable {
  static const String name = "ClientUpdatesItem";
  final InventoryItemModel item;

  ClientUpdatesItemEvent({required this.item, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientDeletesItemEvent.name)
class ClientDeletesItemEvent extends BaseEvent with ClientDeletesItemEventMappable {
  static const String name = "ClientDeletesItem";
  final String id;

  ClientDeletesItemEvent({required this.id, required super.eventType, required super.requestId});
}


////////// Server events //////////
@MappableClass(discriminatorValue: ServerSendsAllProjectsEvent.name)
class ServerSendsAllProjectsEvent extends BaseEvent with ServerSendsAllProjectsEventMappable {
  static const String name = 'ServerSendsAllProjects';
  final List<ProjectItemModel> projects;

  ServerSendsAllProjectsEvent({required this.projects, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsAllItemsEvent.name)
class ServerSendsAllItemsEvent extends BaseEvent with ServerSendsAllItemsEventMappable {
  static const String name = "ServerSendsAllItems";
  final List<InventoryItemModel> items;

  ServerSendsAllItemsEvent({required this.items, required super.eventType, required super.requestId});
}


@MappableClass(discriminatorValue: ServerSendsErrorMessageEvent.name)
class ServerSendsErrorMessageEvent extends BaseEvent with ServerSendsErrorMessageEventMappable {
  static const String name = 'ServerSendsErrorMessage';
  final String message;

  ServerSendsErrorMessageEvent({required this.message, required super.eventType, required super.requestId});
}
