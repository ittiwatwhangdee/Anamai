import 'package:flutter/material.dart';

class AnnouncenmentVdoPage extends StatefulWidget {
  const AnnouncenmentVdoPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentVdoPageState createState() => _AnnouncenmentVdoPageState();
}

class _AnnouncenmentVdoPageState extends State<AnnouncenmentVdoPage> {
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
