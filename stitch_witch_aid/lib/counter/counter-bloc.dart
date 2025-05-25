

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/counter/coordinates-model.dart';
import 'package:stitch_witch_aid/counter/counter-state.dart';
import 'package:stitch_witch_aid/events/events.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class CounterBloc extends Bloc<BaseEvent, CounterState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  CounterBloc({required channel})
  :_channel = channel,
  super (CounterState.empty()){

    on<ClientSendsCoordinatesEvent>(_onClientEvent);

    _channelSubscription = _channel.stream.asBroadcastStream()
        .map((event) => BaseEventMapper.fromJson(event))
        .listen(add, onError:  addError);
  }
  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    _channel.sink.close();
    return super.close();
  }

  void clientSendsCoordinates (CoordinatesModel coordinates){
    add(ClientSendsCoordinatesEvent(eventType: ClientSendsCoordinatesEvent.name, requestId: Uuid().v4(), coordinates: coordinates));
  }

  FutureOr<void> _onClientEvent(BaseEvent event, Emitter<CounterState> emit){
    print("Counter client event triggered");
    _channel.sink.add(event.toJson());
  }
}

