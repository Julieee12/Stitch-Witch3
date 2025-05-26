

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/events/events.dart';
import 'package:stitch_witch_aid/inventory/inventory-item-dto.dart';
import 'package:stitch_witch_aid/inventory/inventory-model.dart';
import 'package:stitch_witch_aid/tag/all-tags.dart';
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
    on<ClientGetsAllItemsWithTagsEvent>(_onClientEvent);
    on<ClientGetsAllTagsEvent>(_onClientEvent);
    on<ClientAddsTagToItemEvent>(_onClientEvent);
    on<ClientDeletesTagFromItemEvent>(_onClientEvent);


    ////////////////////Server event handlers////////////////////////
    on<ServerSendsAllItemsEvent>(_onServerSendsAllItems);
    on<ServerSendsErrorMessageEvent>(_onServerSendsErrorMessage);
    on<ServerSendsUpdatedItemEvent>(_onServerSendsUpdatedItem);
    on<ServerSendsCreatedItemEvent>(_onServerSendsCreatedItem);
    on<ServerDeletedItemEvent>(_onServerDeletedItem);
    on<ServerSendsAllItemsWithTagsEvent>(_onServerSendsAllItemsWithTags);
    on<ServerSendsAllTagsEvent>(_onServerSendsAllTags);

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

  void clientWantsToGetAllItemsWithTags(){
    print("get all items ****WITH TAGS**** event triggered");
    add(ClientGetsAllItemsWithTagsEvent(
        eventType: ClientGetsAllItemsWithTagsEvent.name,
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

  void clientAddsTagToItem(String itemID, String typeID){
    print("((((((((((((((((((((((((( ADDING TAG TO ITEM ))))))))))))))))))))))))))))))))");
    add(ClientAddsTagToItemEvent(
        eventType: ClientAddsTagToItemEvent.name,
        requestId: Uuid().v4(),
        itemId: itemID,
        typeId: typeID));
  }

  void clientGetsTagWithName(String tagName){
    print("88888888888888888888  GETTING TAG WITH NAME  888888888888888888888888888888888888");
    add(ClientGetsTagWithNameEvent(
        eventType: ClientGetsTagWithNameEvent.name,
        requestId: Uuid().v4(),
        tagName: tagName ));
  }

  void clientDeletesTagFromItem(String itemID, String typeID){
    print("+++=====++++++======+++++++ DELETING TAG TO ITEM ===+++++++++++=========++++++++++++");
    add(ClientDeletesTagFromItemEvent(
        eventType: ClientDeletesTagFromItemEvent.name,
        requestId: Uuid().v4(),
        itemId: itemID,
        typeId: typeID));
  }

  void clientGetsAllTags(){
    print("= = = = = = = =  G E T T I N G   A L L   T A G S  = = = = = = = = = = = =");
    add(ClientGetsAllTagsEvent(
        eventType: ClientGetsAllTagsEvent.name,
        requestId: Uuid().v4(),
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

    state.filteredItems.clear();
    state.filteredItems.addAll(event.items);

    emit(state);
  }

  FutureOr<void> _onServerSendsAllItemsWithTags(
      ServerSendsAllItemsWithTagsEvent event,
      Emitter<ItemState> emit) {
    print("PLESASE GOT WORK -------------- TAGS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    state.items.clear();
    state.items.addAll(event.itemsWithTags);

    state.filteredItems.clear();
    state.filteredItems.addAll(event.itemsWithTags);

    emit(state);
  }



  FutureOr<void> _onServerSendsUpdatedItem(
      ServerSendsUpdatedItemEvent event,
      Emitter<ItemState> emit) {
    print("received updated item?");
    var stateCopy = ItemState(items: [...state.items], filteredItems: [...state.filteredItems]);

    int indexOfItemToUpdate = stateCopy.items.indexWhere((item) => item.id == event.itemDto.id);

    stateCopy.items[indexOfItemToUpdate] = event.itemDto;

    stateCopy.filteredItems[indexOfItemToUpdate] = event.itemDto;

    emit(stateCopy);

  }

  FutureOr<void> _onServerSendsCreatedItem(
      ServerSendsCreatedItemEvent event,
      Emitter<ItemState> emit) {
    print("received new item?");
    var stateCopy = ItemState(items: [...state.items], filteredItems: [...state.filteredItems]);

    stateCopy.items.add(event.item);
    stateCopy.filteredItems.add(event.item);

    emit(stateCopy);

  }

  FutureOr<void> _onServerDeletedItem(
      ServerDeletedItemEvent event,
      Emitter<ItemState> emit) {
    print("received deleted item ID?");

    var stateCopy = ItemState(items: [...state.items], filteredItems: [...state.filteredItems]);

    stateCopy.items.removeWhere((item) => item.id == event.itemId);
    stateCopy.filteredItems.removeWhere((item) => item.id == event.itemId);

    emit(stateCopy);

  }

  FutureOr<void> _onServerSendsAllTags(
      ServerSendsAllTagsEvent event,
      Emitter<ItemState> emit) {
    print("SERVER HAS SENT ALL TAGS !!!!!!!");

    TagVariables.allTags = event.allTags;

    TagVariables.allTags.forEach((tag) {
      print(tag.typename);
    });

  }

  FutureOr<void> _onServerSendsCreatedItemTag(
      ServerSendsCreatedItemTagEvent event,
      Emitter<ItemState> emit) {
    print("created item tag *cool guy emoji*");

    var stateCopy = ItemState(items: [...state.items], filteredItems: [...state.filteredItems]);

    int indexOfItemToUpdate = stateCopy.items.indexWhere((item) => item.id == event.itemId);

    stateCopy.items[indexOfItemToUpdate].tags.add(event.tag);
    stateCopy.filteredItems[indexOfItemToUpdate].tags.add(event.tag);

    emit(stateCopy);

  }

  FutureOr<void> _onServerDeletedItemTag(
      ServerDeletedTagFromItemEvent event,
      Emitter<ItemState> emit) {
    print("created item tag *cool guy emoji*");

    var stateCopy = ItemState(items: [...state.items], filteredItems: [...state.filteredItems]);

    int indexOfItemToUpdate = stateCopy.items.indexWhere((item) => item.id == event.itemId);

    stateCopy.items[indexOfItemToUpdate].tags.removeWhere((tag) => tag.tagTypeId == event.tagId);
    stateCopy.filteredItems[indexOfItemToUpdate].tags.removeWhere((tag) => tag.tagTypeId == event.tagId);

    emit(stateCopy);

  }




  FutureOr<void> _onServerSendsErrorMessage(
      ServerSendsErrorMessageEvent event,
      Emitter<ItemState> emit) {
    // TODO let the user know something went wrong
  }

}