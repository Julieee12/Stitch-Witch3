import 'package:flutter/material.dart';
import 'package:stitch_witch_aid/root/nav-bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Column (
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [NavBar()],
        ),
      ),
    );
    throw UnimplementedError();
  }
}