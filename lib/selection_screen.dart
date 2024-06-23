import 'package:flutter/material.dart';
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
        child: ElevatedButton(
          onPressed: () {
            //ボタンを押した時に呼ばれるコードを書く
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JanekenFullPage(),
              ),
            );
          },
          child: const Text('じゃんけん'),
        ),
      ),
    );
  }
}
