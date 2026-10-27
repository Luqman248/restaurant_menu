import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantMenuApp());
}

class RestaurantMenuApp extends StatelessWidget {
  const RestaurantMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ),
        useMaterial3: true,
      ),
      home: const RestaurantMenuScreen(),
    );
  }
}

class RestaurantMenuScreen extends StatelessWidget {
  const RestaurantMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Restaurant Menu',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.5,
            fontFamily: 'serif',
          ),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SizedBox(height: 12),
          FoodCard(
            name: 'Chicken Burger',
            description: 'Juicy chicken burger with fresh vegetables.',
            price: 'RM 12.90',
            emoji: '🍔',
          ),
          FoodCard(
            name: 'Pizza',
            description: 'Cheesy pizza topped with fresh ingredients.',
            price: 'RM 15.90',
            emoji: '🍕',
          ),
          FoodCard(
            name: 'Fried Chicken',
            description: 'Crispy fried chicken served hot and fresh.',
            price: 'RM 7.90',
            emoji: '🍗',
          ),
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String emoji;

  const FoodCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(description),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
