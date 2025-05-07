

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/events/base-event.dart';
import 'package:stitch_witch_aid/events/item-events/client-gets-all-items-event.dart';
import 'package:stitch_witch_aid/events/item-events/server-sends-all-items-event.dart';
import 'package:stitch_witch_aid/states/item-state.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ItemBloc extends Bloc<BaseEvent, ItemState> {
  final WebSocketChannel _channel;
  late StreamSubscription _subscription;
  String? _jwt;

  ItemBloc ({required channel})
      : _channel = channel,
        super(ItemState.empty()){
    ////////////////////Client event handlers//////////////////
    on<ClientGetsAllItemsEvent>(_onClientEvent);


    ////////////////////Server event handlers////////////////////////
    on<ServerSendsAllItemsEvent>(_onServerSendsAllItems);

  }

  void clientWantsToGetAllItems(){
    print("get all items event triggered");
    add(ClientGetsAllItemsEvent(
        eventType: ClientGetsAllItemsEvent.name,
        requestId: Uuid().v4()));
  }

  FutureOr<void> _onClientEvent(BaseEvent event, Emitter<ItemState> emit){
      _channel.sink.add(event.toJson());
  }

  Future<void> _onServerSendsAllItems(BaseEvent event, Emitter<ItemState> emit)async {
    print("recieved state?");
    print(state);
    emit(state);
  }


}