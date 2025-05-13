

import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/events/events.dart';
import 'package:stitch_witch_aid/inventory/item-tag-model.dart';

part 'server-sends-all-tags-for-item-event.mapper.dart';

@MappableClass(discriminatorValue: ServerSendsAllTagsFromItemEvent.name)
class ServerSendsAllTagsFromItemEvent extends BaseEvent with ServerSendsAllTagsFromItemEventMappable {
  static const String name = "ServerSendsAllItems";
  final List<ItemTagModel> tagsForItem;

  ServerSendsAllTagsFromItemEvent({required this.tagsForItem, required super.eventType, required super.requestId});
}