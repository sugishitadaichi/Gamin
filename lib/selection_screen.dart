import 'package:flutter/material.dart';

class selectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('遊び選択　🎮'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  //ボタンを押した時に呼ばれるコードを書く
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => JankenPage(
                  //       title: 'janken_page.dart',
                  //     ),
                  //     fullscreenDialog: true,
                  //   ),
                  // );
                },
                child: const Text('じゃんけん'),
              ),
              ElevatedButton(
                onPressed: () {
                  //ボタンを押した時に呼ばれるコードを書く
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SecondPage(),
                  //     fullscreenDialog: true,
                  //   ),
                  // );
                },
                child: const Text('チンチロ'),
              ),
            ]),
      ),
    );
  }
}
