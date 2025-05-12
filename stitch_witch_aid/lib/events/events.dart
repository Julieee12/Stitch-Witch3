
import 'package:dart_mappable/dart_mappable.dart';

import '../projects/projects-model.dart';

part 'events.mapper.dart';

@MappableClass(discriminatorKey: 'eventType')
abstract class BaseEvent with BaseEventMappable {
  final String eventType;
  final String requestId;

  BaseEvent({required this.eventType, required this.requestId});
}

////////// Client events //////////
@MappableClass(discriminatorValue: ClientGetsAllProjectsEvent.name)
class ClientGetsAllProjectsEvent extends BaseEvent with ClientGetsAllProjectsEventMappable {
  static const String name = 'ClientGetsAllProjects';

  ClientGetsAllProjectsEvent({required super.eventType, required super.requestId});
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

////////// Server events //////////
@MappableClass(discriminatorValue: ServerSendsAllProjectsEvent.name)
class ServerSendsAllProjectsEvent extends BaseEvent with ServerSendsAllProjectsEventMappable {
  static const String name = 'ServerSendsAllProjects';
  final List<ProjectItemModel> projects;

  ServerSendsAllProjectsEvent({required this.projects, required super.eventType, required super.requestId});
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
