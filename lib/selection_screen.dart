import 'package:flutter/material.dart';
import 'package:gamin/battle_lecord.dart';
import 'package:gamin/janken_page.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('遊び画面 🎮'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //ボタンを押した時に呼ばれるコードを書く
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JankenPage(),
                  ),
                );
              },
              child: const Text('じゃんけん'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                //ボタンを押した時に呼ばれるコードを書く
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ButtleLecordPage(),
                  ),
                );
              },
              child: const Text('戦歴'),
            ),
          ],
        ),
      ),
    );
  }
}
