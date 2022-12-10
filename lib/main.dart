import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expense App', home: MyAppHome());
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses App'),
      ),
      body: const Center(
        child: Text('Welcome to app expense'),
      ),
    );
  }
}
