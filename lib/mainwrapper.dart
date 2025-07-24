import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'pages/home.dart';
import 'pages/nearby.dart';
import 'pages/bars.dart';
import 'pages/cafes.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),           
    const Nearby(),           
    const Bars(),   
    const Cafe(),    
  ];

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}