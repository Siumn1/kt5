import 'package:flutter/material.dart';
import 'package:kt5/widgets/carTile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: CarTile(

      )
    );
  }
}