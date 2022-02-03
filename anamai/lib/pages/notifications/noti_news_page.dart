import 'package:flutter/material.dart';

class NotificationNewsPage extends StatefulWidget {
  const NotificationNewsPage({Key? key}) : super(key: key);

  @override
  _NotificationNewsPageState createState() => _NotificationNewsPageState();
}

class _NotificationNewsPageState extends State<NotificationNewsPage> {
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                  "assets/images/LogoAnamai.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('กรมอนามัย'),
            subtitle: Text('แจ้งเตือนโรคซอมบี้ - วันที่ 2 กุมภาพันธ์ 2565'),
            isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                  "assets/images/LogoAnamai.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('กรมอนามัย'),
            subtitle: Text('แจ้งเตือนโรคซอมบี้ - วันที่ 2 กุมภาพันธ์ 2565'),
            isThreeLine: true,
          ),
        ),
      ],
    );
  }
}
