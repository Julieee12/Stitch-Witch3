
import 'package:dart_mappable/dart_mappable.dart';

import 'package:stitch_witch_aid/inventory/inventory-item-dto.dart';
import 'package:stitch_witch_aid/tag/tags-model.dart';

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


///////// Item events ////////////
@MappableClass(discriminatorValue: ClientGetsAllItemsEvent.name)
class ClientGetsAllItemsEvent extends BaseEvent with ClientGetsAllItemsEventMappable {
  static const String name = "ClientGetsAllItems";

  ClientGetsAllItemsEvent({required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientGetsAllItemsWithTagsEvent.name)
class ClientGetsAllItemsWithTagsEvent extends BaseEvent with ClientGetsAllItemsWithTagsEventMappable {
  static const String name = "ClientGetsAllItemsWithTags";

  ClientGetsAllItemsWithTagsEvent({required super.eventType, required super.requestId});
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
  final UpdateItemDto updateItemDto;

  ClientUpdatesItemEvent({required this.updateItemDto, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientDeletesItemEvent.name)
class ClientDeletesItemEvent extends BaseEvent with ClientDeletesItemEventMappable {
  static const String name = "ClientDeletesItem";
  final String id;

  ClientDeletesItemEvent({required this.id, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientGetsAllTagsEvent.name)
class ClientGetsAllTagsEvent extends BaseEvent with ClientGetsAllTagsEventMappable {
  static const String name = "ClientGetsAllTags";

  ClientGetsAllTagsEvent({ required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientGetsTagWithNameEvent.name)
class ClientGetsTagWithNameEvent extends BaseEvent with ClientGetsTagWithNameEventMappable {
  static const String name = "ClientGetsTagWithName";
  final String tagName;

  ClientGetsTagWithNameEvent({required this.tagName, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientAddsTagToItemEvent.name)
class ClientAddsTagToItemEvent extends BaseEvent with ClientAddsTagToItemEventMappable {
  static const String name = "ClientAddsTagToItem";
  final String itemId;
  final String typeId;

  ClientAddsTagToItemEvent({required this.itemId, required this.typeId, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientDeletesTagFromItemEvent.name)
class ClientDeletesTagFromItemEvent extends BaseEvent with ClientDeletesTagFromItemEventMappable {
  static const String name = "ClientDeletesTagFromItem";
  final String itemId;
  final String typeId;


  ClientDeletesTagFromItemEvent({required this.itemId, required this.typeId, required super.eventType, required super.requestId});
}

///////////////////////////////////////
////////// ITEM SERVER EVENTS /////////
///////////////////////////////////////
@MappableClass(discriminatorValue: ServerSendsAllItemsEvent.name)
class ServerSendsAllItemsEvent extends BaseEvent with ServerSendsAllItemsEventMappable {
  static const String name = "ServerSendsAllItems";
  final List<InventoryItemModel> items;

  ServerSendsAllItemsEvent({required this.items, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsAllItemsWithTagsEvent.name)
class ServerSendsAllItemsWithTagsEvent extends BaseEvent with ServerSendsAllItemsWithTagsEventMappable {
  static const String name = "ServerSendsAllItemsWithTags";
  final List<InventoryItemModel> itemsWithTags;

  ServerSendsAllItemsWithTagsEvent({required this.itemsWithTags, required super.eventType, required super.requestId});
}


@MappableClass(discriminatorValue: ServerSendsCreatedItemEvent.name)
class ServerSendsCreatedItemEvent extends BaseEvent with ServerSendsCreatedItemEventMappable {
  static const String name = "ServerSendsCreatedItem";
  final InventoryItemModel item;

  ServerSendsCreatedItemEvent({required this.item, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsUpdatedItemEvent.name)
class ServerSendsUpdatedItemEvent extends BaseEvent with ServerSendsUpdatedItemEventMappable {
  static const String name = "ServerSendsUpdatedItem";
  final InventoryItemModel itemDto;

  ServerSendsUpdatedItemEvent({required this.itemDto, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerDeletedItemEvent.name)
class ServerDeletedItemEvent extends BaseEvent with ServerDeletedItemEventMappable {
  static const String name = "ServerDeletedItem";
  final String itemId;

  ServerDeletedItemEvent({required this.itemId, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsAllTagsEvent.name)
class ServerSendsAllTagsEvent extends BaseEvent with ServerSendsAllTagsEventMappable {
  static const String name = "ServerSendsAllTags";
  final List<TagDto> allTags;

  ServerSendsAllTagsEvent({ required this.allTags,required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsTagWithNameEvent.name)
class ServerSendsTagWithNameEvent extends BaseEvent with ServerSendsTagWithNameEventMappable {
  static const String name = "ServerSendsTagWithName";
  final TagDto tagWithName;

  ServerSendsTagWithNameEvent({required this.tagWithName, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsCreatedItemTagEvent.name)
class ServerSendsCreatedItemTagEvent extends BaseEvent with ServerSendsCreatedItemTagEventMappable {
  static const String name = "ServerSendsCreatedItemTag";
  final String itemId;
  final TagDto tag;

  ServerSendsCreatedItemTagEvent( {required this.itemId, required this.tag, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerDeletedTagFromItemEvent.name)
class ServerDeletedTagFromItemEvent extends BaseEvent with ServerDeletedTagFromItemEventMappable {
  static const String name = "ServerDeletedTagFromItem";
  final String itemId;
  final String tagId;

  ServerDeletedTagFromItemEvent({required this.itemId, required this.tagId, required super.eventType, required super.requestId});
}

////////// Project events /////////
@MappableClass(discriminatorValue: ClientGetsAllProjectsEvent.name)
class ClientGetsAllProjectsEvent extends BaseEvent with ClientGetsAllProjectsEventMappable {
  static const String name = 'ClientGetsAllProjects';

  ClientGetsAllProjectsEvent({required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientGetsAllProjectsWithTagsEvent.name)
class ClientGetsAllProjectsWithTagsEvent extends BaseEvent with ClientGetsAllProjectsWithTagsEventMappable {
  static const String name = 'ClientGetsAllProjectsWithTags';

  ClientGetsAllProjectsWithTagsEvent({required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientCreatesNewProjectEvent.name)
class ClientCreatesNewProjectEvent extends BaseEvent with ClientCreatesNewProjectEventMappable {
  static const String name = 'ClientCreatesNewProject';
  final CreateNewProjectDto createNewProjectDto;

  ClientCreatesNewProjectEvent({required this.createNewProjectDto, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientDeletesProjectEvent.name)
class ClientDeletesProjectEvent extends BaseEvent with ClientDeletesProjectEventMappable {
  static const String name = 'ClientDeletesProject';
  final String projectId;

ClientDeletesProjectEvent({required this.projectId, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ClientUpdatesProjectEvent.name)
class ClientUpdatesProjectEvent extends BaseEvent with ClientUpdatesProjectEventMappable {
  static const String name = 'ClientUpdatesProject';
  final UpdateProjectDto updateProjectDto;

  ClientUpdatesProjectEvent({required this.updateProjectDto, required super.eventType, required super.requestId});
}

////////// Project Server events //////////
@MappableClass(discriminatorValue: ServerSendsAllProjectsEvent.name)
class ServerSendsAllProjectsEvent extends BaseEvent with ServerSendsAllProjectsEventMappable {
  static const String name = 'ServerSendsAllProjects';
  final List<ProjectItemModel> projects;

  ServerSendsAllProjectsEvent({required this.projects, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsAllProjectsWithTagsEvent.name)
class ServerSendsAllProjectsWithTagsEvent extends BaseEvent with ServerSendsAllProjectsWithTagsEventMappable {
  static const String name = 'ServerSendsAllProjectsWithTags';
  final List<ProjectItemModel> projectsWithTags;

  ServerSendsAllProjectsWithTagsEvent({required this.projectsWithTags, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsCreatedProjectEvent.name)
class ServerSendsCreatedProjectEvent extends BaseEvent with ServerSendsCreatedProjectEventMappable {
  static const String name = 'ServerSendsCreatedProject';
  final ProjectItemModel projectDto;

  ServerSendsCreatedProjectEvent({required this.projectDto, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerDeletedProjectEvent.name)
class ServerDeletedProjectEvent extends BaseEvent with ServerDeletedProjectEventMappable {
  static const String name = 'ServerDeletedProject';
  final String projectId;

  ServerDeletedProjectEvent({required this.projectId, required super.eventType, required super.requestId});

}

@MappableClass(discriminatorValue: ServerSendsUpdatedProjectEvent.name)
class ServerSendsUpdatedProjectEvent extends BaseEvent with ServerSendsUpdatedProjectEventMappable {
  static const String name = 'ServerSendsUpdatedProject';
  final ProjectItemModel projectDto;

  ServerSendsUpdatedProjectEvent({required this.projectDto, required super.eventType, required super.requestId});
}

@MappableClass(discriminatorValue: ServerSendsErrorMessageEvent.name)
class ServerSendsErrorMessageEvent extends BaseEvent with ServerSendsErrorMessageEventMappable {
  static const String name = 'ServerSendsErrorMessage';
  final String message;

  ServerSendsErrorMessageEvent({required this.message, required super.eventType, required super.requestId});
}
