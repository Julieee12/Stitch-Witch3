

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:stitch_witch_aid/events/base-event.dart';
import 'package:stitch_witch_aid/states/item-state.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ItemBloc extends Bloc<BaseEvent, ItemState> {
  final WebSocketChannel _channel;
  late StreamSubscription _subscription;
  String? _jwt;

  ItemBloc ({required channel})
      : _channel = channel,
        super(ItemState.empty()){
    ////////////////////Client event handlers//////////////////



    ////////////////////Server event handlers////////////////////////
  }



}