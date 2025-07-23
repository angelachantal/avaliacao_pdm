import 'package:flutter/material.dart';
import '../pages/bars.dart';
import '../pages/cafes.dart';
import '../pages/dining.dart';
import '../pages/nearby.dart';
import '../pages/fastfood.dart';
import '../pages/featured.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
        BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: 'Discovery'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
