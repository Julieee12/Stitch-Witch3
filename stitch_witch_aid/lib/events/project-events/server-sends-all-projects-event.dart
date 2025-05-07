import 'package:dart_mappable/dart_mappable.dart';
import 'package:stitch_witch_aid/events/base-event.dart';

import '../../projects/projects-model.dart';

part 'server-sends-all-projects-event.mapper.dart';

@MappableClass(discriminatorKey: ServerSendsAllProjectsEvent.name)
class ServerSendsAllProjectsEvent extends BaseEvent with ServerSendsAllProjectsEventMappable {
  static const String name = 'ServerSendsAllProjects';
  final List<ProjectItemModel> projects;

  ServerSendsAllProjectsEvent({required this.projects, required super.eventType, required super.requestId});
}