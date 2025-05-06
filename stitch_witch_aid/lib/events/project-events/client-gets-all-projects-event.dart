import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/events//base-event.dart';

part 'client-gets-all-projects-event.mapper.dart';

@MappableClass(discriminatorKey: ClientGetsAllProjectsEvent.name)
class ClientGetsAllProjectsEvent extends BaseEvent with ClientGetsAllProjectsEventMappable {
  static const String name = 'ClientGetsAllProjects';

  ClientGetsAllProjectsEvent(super.eventType, super.requestId);
}