

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/events/events.dart';
import 'package:stitch_witch_aid/states/item-state.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ItemBloc extends Bloc<BaseEvent, ItemState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  ItemBloc ({required channel})
      : _channel = channel,
        super(ItemState.empty()){
    ////////////////////Client event handlers//////////////////
    on<ClientGetsAllItemsEvent>(_onClientEvent);


    ////////////////////Server event handlers////////////////////////
    on<ServerSendsAllItemsEvent>(_onServerSendsAllItems);
    on<ServerSendsErrorMessageEvent>(_onServerSendsErrorMessage);

    //feed deserialized events into this bloc
    //basically just listening to events
    _channelSubscription = _channel.stream
    .map((event) => BaseEventMapper.fromJson(event))
    .listen(add, onError:  addError);

  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    _channel.sink.close();
    return super.close();
  }

  /////////////////////////////////Client events/////////////////////////////////////////////
  void clientWantsToGetAllItems(){
    print("get all items event triggered");
    add(ClientGetsAllItemsEvent(
        eventType: ClientGetsAllItemsEvent.name,
        requestId: Uuid().v4()));
  }

  FutureOr<void> _onClientEvent(BaseEvent event, Emitter<ItemState> emit){
    print("Some kind of client event triggered");
      _channel.sink.add(event.toJson());
  }

  /////////////////////////////////Server events/////////////////////////////////////////////

  FutureOr<void> _onServerSendsAllItems(
      ServerSendsAllItemsEvent event,
      Emitter<ItemState> emit) {
    print("received state?");
    state.items.clear();
    state.items.addAll(event.items);
    emit(state);
  }

  FutureOr<void> _onServerSendsErrorMessage(
      ServerSendsErrorMessageEvent event,
      Emitter<ItemState> emit) {
    // TODO let the user know something went wrong
  }

}