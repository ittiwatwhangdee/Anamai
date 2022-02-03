import 'package:flutter/material.dart';

class NotificationNewsPage extends StatefulWidget {
  const NotificationNewsPage({Key? key}) : super(key: key);

  @override
  _NotificationNewsPageState createState() => _NotificationNewsPageState();
}

class _NotificationNewsPageState extends State<NotificationNewsPage> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text("แจ้งเตือนข่าว"),
          ),
          new RaisedButton(
              child: new Text('Attention'),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: pressAttention ? Colors.grey : Colors.blue,
              onPressed: () {
                pressAttention = !pressAttention;
                print(pressAttention);
              })
        ],
      ),
    );
  }
}
