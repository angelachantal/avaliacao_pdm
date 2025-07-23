import 'package:flutter/material.dart';
import 'bars.dart'; 
import 'dining.dart';
import 'cafe.dart';
import 'nearby.dart'; 
import 'fastfood.dart';
import 'featured_food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação PDM',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  void navegacao(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Discovery")),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          cardItem(context, 'Bars & Hotels', 'assets/images/caneca-de-cerveja.png', Bars()),
          cardItem(context, 'Fine Dining', 'assets/images/garcom.png', Dining()),
          cardItem(context, 'Cafes', 'assets/images/cafeteria.png', Cafe()),
          cardItem(context, 'Nearby', 'assets/images/rota.png', Nearby()),
          cardItem(context, 'Fast Foods', 'assets/images/fast-food.png', FastFood()),
          cardItem(context, 'Featured Foods', 'assets/images/pizza.png', FeaturedFood()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Discovery'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Top Foods'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'),
        ],
        onTap: (index){
          if (index == 0) {
            navegacao(context, MyHomePage());
          } else if (index == 1) {
            navegacao(context, Nearby());
          }
        },
      ),
    );
  }

  Widget cardItem(BuildContext context, String title, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () => navegacao(context, page),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover, height: 100, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: const TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
