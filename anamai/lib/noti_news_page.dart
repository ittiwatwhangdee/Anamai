import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text("แจ้งเตือนบัตรของฉัน"),
          ),
          new RaisedButton(
            child: new Text('Attention'),
            textColor: Colors.white,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            color: pressAttention ? Colors.grey : Colors.blue,
            onPressed: () => setState(() => pressAttention = !pressAttention),
          )
        ],
      ),
    );
  }
}
