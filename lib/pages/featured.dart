import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Featured Foods')),
      body: const Center(child: Text('Featured Foods')),
    );
  }
}