

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/events/events.dart';
import 'package:stitch_witch_aid/events/item-events/server-sends-all-tags-for-item-event.dart';
import 'package:stitch_witch_aid/inventory/inventory-item-dto.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'item-state.dart';

class ItemBloc extends Bloc<BaseEvent, ItemState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;

  ItemBloc ({required channel})
      : _channel = channel,
        super(ItemState.empty()){
    ////////////////////Client event handlers//////////////////
    on<ClientGetsAllItemsEvent>(_onClientEvent);
    on<ClientCreatesNewItemEvent>(_onClientEvent);
    on<ClientUpdatesItemEvent>(_onClientEvent);
    on<ClientDeletesItemEvent>(_onClientEvent);
    on<ClientGetsAllTagsFromItemEvent>(_onClientEvent);


    ////////////////////Server event handlers////////////////////////
    on<ServerSendsAllItemsEvent>(_onServerSendsAllItems);
    on<ServerSendsAllTagsFromItemEvent>(_onServerSendsAllTagsFromItem);
    on<ServerSendsErrorMessageEvent>(_onServerSendsErrorMessage);
    on<ServerSendsUpdatedItemEvent>(_onServerSendsUpdatedItem);
    on<ServerSendsCreatedItemEvent>(_onServerSendsCreatedItem);
    on<ServerDeletedItemEvent>(_onServerDeletedItem);

    //feed deserialized events into this bloc
    //basically just listening to events
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

  /////////////////////////////////Client events/////////////////////////////////////////////
  void clientWantsToGetAllItems(){
    print("get all items event triggered");
    add(ClientGetsAllItemsEvent(
        eventType: ClientGetsAllItemsEvent.name,
        requestId: Uuid().v4()));
  }

  void clientCreatesNewItem(InventoryItemDto item){
    print("!!!!!!!!!!!!!!! NEW ITEM BEING CREATED !!!!!!!!!!!!!!!!!!");
    add(ClientCreatesNewItemEvent(
        eventType: ClientCreatesNewItemEvent.name,
        requestId: Uuid().v4(),
        newItemDto: item));
  }

  void clientUpdatesItem(UpdateItemDto item){
    print("~~~~~~~~~~~~~~~~~UPDARE~~~~~~~~~~~~~~~~~~~~");
    add(ClientUpdatesItemEvent(
        eventType: ClientUpdatesItemEvent.name,
        requestId: Uuid().v4(),
        updateItemDto: item));
  }
  void clientDeletesItemItems(String itemId){
    print("_______--------______ Delete... ______--------________");

    add(ClientDeletesItemEvent(
        eventType: ClientDeletesItemEvent.name,
        requestId: Uuid().v4(),
        id: itemId,));
  }

  void clientWantsToGetAllItemTagsFromItem(String itemId){
    print("GETTIONG ALL TAGS");
    add(ClientGetsAllTagsFromItemEvent(
        eventType: ClientGetsAllTagsFromItemEvent.name,
        requestId: Uuid().v4(),
        id: itemId
    ));
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

  FutureOr<void> _onServerSendsUpdatedItem(
      ServerSendsUpdatedItemEvent event,
      Emitter<ItemState> emit) {
    print("received updated item?");
    var stateCopy = ItemState(items: [...state.items]);

    int indexOfItemToUpdate = stateCopy.items.indexWhere((item) => item.id == event.itemDto.id);

    stateCopy.items[indexOfItemToUpdate] = event.itemDto;

    emit(stateCopy);

  }

  FutureOr<void> _onServerSendsCreatedItem(
      ServerSendsCreatedItemEvent event,
      Emitter<ItemState> emit) {
    print("received new item?");
    var stateCopy = ItemState(items: [...state.items]);

    stateCopy.items.add(event.item);

    emit(stateCopy);

  }

  FutureOr<void> _onServerDeletedItem(
      ServerDeletedItemEvent event,
      Emitter<ItemState> emit) {
    print("received deleted item ID?");

    var stateCopy = ItemState(items: state.items);

    stateCopy.items.removeWhere((item) => item.id == event.itemId);

    emit(stateCopy);

  }

  FutureOr<void> _onServerSendsAllTagsFromItem(
      ServerSendsAllTagsFromItemEvent event,
      Emitter<ItemState> emit) {
    print("received item tags?");
    state.tagsForItem ?? state.tagsForItem!.clear() ;
    state.tagsForItem!.addAll(event.tagsForItem);
    emit(state);
  }

  FutureOr<void> _onServerSendsErrorMessage(
      ServerSendsErrorMessageEvent event,
      Emitter<ItemState> emit) {
    // TODO let the user know something went wrong
  }

}