import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/states/projects-state.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../events/base-event.dart';
import '../events/project-events/client-gets-all-projects-event.dart';
import '../events/project-events/server-sends-all-projects-event.dart';

class ProjectBloc extends Bloc<BaseEvent, ProjectsState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  ProjectBloc({required channel}) : _channel = channel, super(ProjectsState.empty()) {
    ////////////////////// Handlers for client events //////////////////////
    on<ClientGetsAllProjectsEvent>(_onClientEvent);



    ////////////////////// Handlers for server events //////////////////////
    on<ServerSendsAllProjectsEvent>(_onServerSendsAllProjects);



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
    print('Client request');
    add(ClientGetsAllProjectsEvent(
        eventType: ClientGetsAllProjectsEvent.name,
        requestId: Uuid().v4()));
  }



  ///////////////////// Receiving server events /////////////////////
  FutureOr<void> _onServerSendsAllProjects(
      ServerSendsAllProjectsEvent event,
      Emitter<ProjectsState> emit) {
    state.projects.replaceRange(0, state.projects.length, event.projects);
    print('Server response');
    emit(state);
  }
}