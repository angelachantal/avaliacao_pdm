import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  const Bars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bars & Hotels')),
      body: const Center(child: Text('Bars & Hotels')),
    );
  }
}