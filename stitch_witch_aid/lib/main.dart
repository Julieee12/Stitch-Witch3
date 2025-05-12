import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/counter/counter-screen.dart';
import 'package:stitch_witch_aid/root/add-button.dart';
import 'package:stitch_witch_aid/root/nav-bar.dart';

void main() {
  runApp(const MyApp());
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