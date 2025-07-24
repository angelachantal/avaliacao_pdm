import 'package:flutter/material.dart';

class FastFood extends StatelessWidget {
  const FastFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fast Foods')),
      body: const Center(child: Text('Fast Foods')),
    );
  }
}