// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import './widgets/chart.dart';

import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import './models/transaction.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> userTransactions = [
    // Transaction(
    //   title: 'Nike Shoes',
    //   id: 'Nike-1',
    //   amount: 20.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   title: 'Adidas Shoes',
    //   id: 'Adidas',
    //   amount: 19.99,
    //   date: DateTime.now(),
    // ),
  ];

  List<Transaction> get recentTransaction {
    return userTransactions.where((item) {
      return item.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _addNewTransaction(String txTitle, double txAmount, DateTime date) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: date,
      id: DateTime.now().toString(),
    );

    setState(() {
      userTransactions.add(newTx);
    });
  }

  void _deleteTransaction(String txId) {
    setState(() {
      userTransactions.removeWhere((transaction) => txId == transaction.id);
    });
  }

  void _startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onLongPress: () {},
            child: NewTransaction(_addNewTransaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startNewTransaction(context),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Personal Expenses App'),
        actions: [
          IconButton(
            onPressed: () => _startNewTransaction(context),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Chart(recentTransaction),
            TransactionList(userTransactions, _deleteTransaction),
          ],
        ),
      ),
    );
  }
}
