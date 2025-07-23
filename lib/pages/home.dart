import 'package:flutter/material.dart';
import 'bars.dart';
import 'cafes.dart';
import 'dining.dart';
import 'nearby.dart';
import 'fastfood.dart';
import 'featured.dart';
import '../widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _handleNavTap(BuildContext context, int index) {
    if (index == 1) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const Nearby()));
  } else if (index == 2) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const FeaturedFood()));
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discovery 1')),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          _buildCard(context, 'Bars & Hotels', 'assets/images/caneca-de-cerveja.png', const Bars()),
          _buildCard(context, 'Fine Dining', 'assets/images/garcom.png', Dining()),
          _buildCard(context, 'Cafes', 'assets/images/cafeteria.png', Cafe()),
          _buildCard(context, 'Nearby', 'assets/images/rota.png', Nearby()),
          _buildCard(context, 'Fast Foods', 'assets/images/fast-food.png', FastFood()),
          _buildCard(context, 'Featured Foods', 'assets/images/featured-food.png', FeaturedFood()),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String imagePath, Widget page) {
    return Card(
      color: color,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 60,
              width: 60,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }  
}
