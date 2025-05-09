import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stitch_witch_aid/backend-uris.dart';
import 'package:stitch_witch_aid/blocs/Item-bloc.dart';
import 'package:stitch_witch_aid/blocs/project-bloc.dart';
import 'package:stitch_witch_aid/counter/counter.dart';
import 'package:stitch_witch_aid/root/nav-bar.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  ////////////////////// Connect to the backend websocket server //////////////////////
  final wsUri = Uri.parse('${BackendUris.wsUri}?id=${Uuid().v4()}');
  //final wsUri = Uri.parse('${BackendUris.wsUri}?id=123');
  //final wsUri = Uri.parse('${BackendUris.wsUri}');
  final channel = WebSocketChannel.connect(wsUri);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => ProjectBloc(channel: channel)),
      BlocProvider(create: (context) => ItemBloc(channel: channel))
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
  Widget currentWidget = Counter(); // The current page being loaded

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