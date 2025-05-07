

import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/events/base-event.dart';

part 'client-gets-all-items-event.mapper.dart';

@MappableClass(discriminatorKey: ClientGetsAllItemsEvent.name)
class ClientGetsAllItemsEvent extends BaseEvent with ClientGetsAllItemsEventMappable {
    static const String name = "ClientGetsAllItems";

    ClientGetsAllItemsEvent({required super.eventType, required super.requestId});
}