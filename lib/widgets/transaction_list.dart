import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: ((ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  )),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.orange),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }),
        itemCount: transactions.length,
      ),
    );
  }
}
