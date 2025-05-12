import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/backend-uris.dart';
import 'package:stitch_witch_aid/blocs/Item-bloc.dart';
import 'package:stitch_witch_aid/counter/counter-screen.dart';
import 'package:stitch_witch_aid/root/nav-bar.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'backend-uris.dart';
import 'projects/project-bloc.dart';

void main() {
  ////////////////////// Connect to the backend websocket server //////////////////////
  final wsUri = Uri.parse('${BackendUris.wsUri}?id=${Uuid().v4()}');

  //final channel = WebSocketChannel.connect(wsUri);

  //each Bloc listens to the Websocket server using a different stream
  //this is most likely bad practice and should probably be
  //replaced with a StreamController or something like that
  //but idk how to set that up so for now each page has its own web socket stream
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => ProjectBloc(channel: WebSocketChannel.connect(wsUri))),
      BlocProvider(create: (context) => ItemBloc(channel: WebSocketChannel.connect(wsUri)))
    ],
      child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentWidget = CounterScreen(); // The current page being loaded

  // Callback function to change the current page
  callback(newCurrentWidget) {
    setState(() {
      currentWidget = newCurrentWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: currentWidget,
          bottomNavigationBar: NavBar(callback), // Bottom navigation bar is passed the callback function,

      ),
      );
  }
}