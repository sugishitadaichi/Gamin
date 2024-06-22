import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(JankenPage());
}

class JankenPage extends StatelessWidget {
  const JankenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('じゃんけん'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '相手',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '✌️',
              style: TextStyle(fontSize: 100),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              '自分',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '👊',
              style: TextStyle(fontSize: 200),
            ),
          ],
        ),
      ),
    );
  }
}
