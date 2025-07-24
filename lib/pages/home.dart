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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discovery')),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          _buildCard(context, 'Bars & Hotels', 'assets/images/caneca-de-cerveja.png', Bars(), Colors.white),
          _buildCard(context, 'Fine Dining', 'assets/images/garcom.png', Dining(), Colors.white),
          _buildCard(context, 'Cafes', 'assets/images/cafeteria.png', Cafe(), Colors.white),
          _buildCard(context, 'Nearby', 'assets/images/rota.png', Nearby(), Colors.yellow),
          _buildCard(context, 'Fast Foods', 'assets/images/fast-food.png', FastFood(), Colors.white),
          _buildCard(context, 'Featured Foods', 'assets/images/featured-food.png', Featured(), Colors.white),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String imagePath, Widget page, Color color) {
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