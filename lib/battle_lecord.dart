import 'package:flutter/material.dart';

class ButtleLecordPage extends StatefulWidget {
  const ButtleLecordPage({super.key});

  @override
  State<ButtleLecordPage> createState() => _ButtleLecordPageState();
}

class _ButtleLecordPageState extends State<ButtleLecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦　歴'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
