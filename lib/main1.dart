import 'package:flutter/material.dart';
import 'package:kt5/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Some cars",
      home: MyHomePage(),
    );
  }
}
