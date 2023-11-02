import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    const ToDoApp(),
  );
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home:  const ToDoList(),
    );
  }
}