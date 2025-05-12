import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/counter/counter-screen.dart';
import 'package:stitch_witch_aid/root/nav-bar.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'backend-uris.dart';
import 'blocs/project-bloc.dart';

void main() {
  ////////////////////// Connect to the backend websocket server //////////////////////
  final wsUri = Uri.parse('${BackendUris.wsUri}?id=${Uuid().v4()}');
  final channel = WebSocketChannel.connect(wsUri);

  runApp(BlocProvider(
      create: (context) => ProjectBloc(channel: channel),
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