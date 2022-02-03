import 'package:flutter/material.dart';

class AnnouncenmentNewsPage extends StatefulWidget {
  const AnnouncenmentNewsPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentNewsPageState createState() => _AnnouncenmentNewsPageState();
}

class _AnnouncenmentNewsPageState extends State<AnnouncenmentNewsPage> {
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
