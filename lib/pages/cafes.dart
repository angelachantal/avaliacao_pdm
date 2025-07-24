import 'package:flutter/material.dart';

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cafes')),
      body: const Center(child: Text('Cafes')),
    );
  }
}