

import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/events/base-event.dart';

part 'server-sends-all-items-event.mapper.dart';

@MappableClass(discriminatorKey: ServerSendsAllItemsEvent.name)
class ServerSendsAllItemsEvent extends BaseEvent with ServerSendsAllItemsEventMappable {
  static const String name = "ServerSendsAllItems";

  ServerSendsAllItemsEvent({required super.eventType, required super.requestId});
}