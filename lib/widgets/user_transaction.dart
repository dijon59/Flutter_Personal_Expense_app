import 'package:flutter/material.dart';
import 'package:personal_expense_app/models/transaction.dart';
import 'package:personal_expense_app/widgets/transaction_list.dart';
import 'package:personal_expense_app/widgets/new_transaction.dart';

class UserTransaction extends StatefulWidget {

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'New Shoes',
        amount: 70.15,
        date: DateTime.now()
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 76.15,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction (String title, double amount) {
    final newTex = Transaction(id: DateTime.now().toString(), title: title, amount: amount, date: DateTime.now());
    setState(() {
      _userTransactions.add(newTex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions),
    ],);
  }
}
