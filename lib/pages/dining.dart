import 'package:flutter/material.dart';

class Dining extends StatelessWidget {
  const Dining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fine Dining')),
      body: const Center(child: Text('Fine Dining')),
    );
  }
}