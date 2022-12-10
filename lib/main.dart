import 'package:flutter/services.dart';

import 'models/transaction.dart';
import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                child: const Text('CHART'),
                elevation: 5,
              )),
          UserTransactions()
        ],
      ),
    );
  }
}
