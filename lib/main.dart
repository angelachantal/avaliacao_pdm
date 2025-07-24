// Ponto de entrada do app. Chama runApp() e carrega App()

import 'package:flutter/material.dart';
import 'mainwrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery App',
      home: const MainWrapper(),
    );
  }
}