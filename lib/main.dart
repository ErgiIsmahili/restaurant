import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RestaurantListScreen(),
    );
  }
}

class RestaurantListScreen extends ConsumerWidget {
  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Restaurants',
            style: TextStyle(
              fontSize: 32, 
            ),
          ),
        ),
        toolbarHeight: 80,
      ),
      body: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: OutlineInputBorder(),
        )
      )
    );

  }
}
