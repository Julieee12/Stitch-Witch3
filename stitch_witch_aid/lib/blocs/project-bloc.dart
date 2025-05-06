import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/events/base-event.dart';
import 'package:stitch_witch_aid/events/project-events/client-gets-all-projects-event.dart';
import 'package:stitch_witch_aid/states/projects-state.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ProjectBloc extends Bloc<BaseEvent, ProjectsState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  ProjectBloc({required channel}) : _channel = channel, super(ProjectsState.empty()) {

    ////////////////////// Handlers for client events //////////////////////
    on<ClientGetsAllProjectsEvent>(_onClientEvent);



    ////////////////////// Handlers for server events //////////////////////



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

  ///////////////////// Client event methods /////////////////////
  FutureOr<void> _onClientEvent(BaseEvent event, Emitter<ProjectsState> emit) {
    _channel.sink.add(event.toJson());
  }

  void clientGetsAllProjects() {
    add(ClientGetsAllProjectsEvent(
        ClientGetsAllProjectsEvent.name,
        Uuid().toString()));
  }
}