import 'package:flutter/material.dart';
import 'dart:math';

class JanekenFullPage extends StatefulWidget {
  const JanekenFullPage({super.key});

  @override
  State<JanekenFullPage> createState() => _JanekenFullPageState();
}

class _JanekenFullPageState extends State<JanekenFullPage> {
  String computedHand = '👊';
  String myHand = '👊';
  String result = '引き分け';

  void selectHand(String selectedHand) {
    myHand = selectedHand;
    computerHand();
    judge();
    setState(() {});
  }

  void computerHand() {
    final randomNumber = Random().nextInt(3);
    computedHand = randomNumberToHand(randomNumber);
  }

  String randomNumberToHand(int randomNumber) {
    switch (randomNumber) {
      case 0:
        return '👊';
      case 1:
        return '✌️';
      case 2:
        return '✋';
      default:
        return '👊';
    }
  }

  void judge() {
    if (computedHand == myHand) {
      result = '引き分け';
    } else if (myHand == '👊' && computedHand == '✌️' ||
        myHand == '✌️' && computedHand == '✋' ||
        myHand == '✋' && computedHand == '👊') {
      result = '勝ち';
    } else {
      result = '負け';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけん'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result,
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              computedHand,
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              myHand,
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectHand('👊');
                  },
                  child: Text('👊'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✌️');
                  },
                  child: Text('✌️'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✋');
                  },
                  child: Text('✋'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
