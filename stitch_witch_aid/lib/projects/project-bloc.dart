import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/projects/projects-model.dart';
import 'package:stitch_witch_aid/projects/projects-state.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../events/events.dart';


class ProjectBloc extends Bloc<BaseEvent, ProjectsState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  ProjectBloc({required channel})
      : _channel = channel,
        super(ProjectsState.empty()) {
    ////////////////////// Handlers for client events //////////////////////
    on<ClientGetsAllProjectsEvent>(_onClientEvent);
    on<ClientCreatesNewProjectEvent>(_onClientEvent);


    ////////////////////// Handlers for server events //////////////////////
    on<ServerSendsAllProjectsEvent>(_onServerSendsAllProjects);
    on<ServerSendsCreatedProjectEvent>(_onServerSendsCreatedProject);
    on<ServerSendsErrorMessageEvent>(_onServerSendsErrorMessage);


    ///////////////////// Feed deserialized events from server into this bloc //////////////////////
    _channelSubscription = _channel.stream
        .map((event) => BaseEventMapper.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    // And close the socket
    _channel.sink.close();
    super.close();
  }

  ///////////////////// Sending client events to server /////////////////////
  FutureOr<void> _onClientEvent(BaseEvent event, Emitter<ProjectsState> emit) {
    _channel.sink.add(event.toJson());
  }

  void clientGetsAllProjects() {
    add(ClientGetsAllProjectsEvent(
        eventType: ClientGetsAllProjectsEvent.name,
        requestId: Uuid().v4()));
  }

  void clientCreatesNewProject(CreateNewProjectDto dto) {
    add(ClientCreatesNewProjectEvent(
        createNewProjectDto: dto,
        eventType: ClientCreatesNewProjectEvent.name,
        requestId: Uuid().v4()));
  }


  ///////////////////// Receiving server events /////////////////////
  FutureOr<void> _onServerSendsAllProjects(
      ServerSendsAllProjectsEvent event,
      Emitter<ProjectsState> emit) {
    var stateCopy = ProjectsState.empty();

    stateCopy.projects.addAll(event.projects);

    emit(stateCopy);
  }

  FutureOr<void> _onServerSendsCreatedProject(
      ServerSendsCreatedProjectEvent event,
      Emitter<ProjectsState> emit) {
    var stateCopy = ProjectsState(projects: [...state.projects]);

    stateCopy.projects.add(event.projectDto);

    emit(stateCopy);
  }

  FutureOr<void> _onServerSendsErrorMessage(
      ServerSendsErrorMessageEvent event,
      Emitter<ProjectsState> emit) {
    // TODO let the user know something went wrong
  }
}