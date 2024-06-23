import 'package:flutter/material.dart';
import 'dart:math';

class JankenPage extends StatefulWidget {
  const JankenPage({super.key});

  @override
  State<JankenPage> createState() => _JankenPageState();
}

class _JankenPageState extends State<JankenPage> {
  String computedHand = '👊';
  String myHand = '👊';
  String result = '引き分け';

  int winCount = 0;
  int loseCount = 0;

  void selectHand(String selectedHand) {
    myHand = selectedHand;
    computerHand();
    judge();
    judgeCount();
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

  void judgeCount() {
    if (computedHand == myHand) {
    } else if (myHand == '👊' && computedHand == '✌️' ||
        myHand == '✌️' && computedHand == '✋' ||
        myHand == '✋' && computedHand == '👊') {
      winCount++;
    } else {
      loseCount++;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color resultColor;

    switch (result) {
      case '勝ち':
        resultColor = Colors.red;
        break;
      case '負け':
        resultColor = Colors.blue;
        break;
      case '引き分け':
        resultColor = Colors.green;
        break;
      default:
        resultColor = Colors.black;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけん'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '勝敗は・・・',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$result！',
              style: TextStyle(
                fontSize: 50,
                color: resultColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              computedHand,
              style: TextStyle(
                fontSize: 100,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              myHand,
              style: TextStyle(
                fontSize: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectHand('👊');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                  ),
                  child: Text(
                    '👊',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✌️');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                  ),
                  child: Text(
                    '✌️',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✋');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                  ),
                  child: Text(
                    '✋',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '勝ち: $winCount  負け: $loseCount',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
