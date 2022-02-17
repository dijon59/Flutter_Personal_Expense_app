import 'package:flutter/material.dart';
import 'package:personal_expense_app/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                // color: Colors.blue,
                child: Card(
                  color: Colors.blue,
                  child: Container(
                    child: Text('CHART!'),
                  ),
                  elevation: 5,
                ),
              ),
              UserTransaction(),
            ],
          ),
        );
  }
}
