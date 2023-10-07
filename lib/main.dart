import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    const NikeBangladeshApp(),
  );
}

class NikeBangladeshApp extends StatelessWidget {
  const NikeBangladeshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShopCartScreen(),
    );
  }
}