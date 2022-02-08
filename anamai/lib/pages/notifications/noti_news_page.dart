import 'package:flutter/material.dart';

class NotificationNewsPage extends StatefulWidget {
  const NotificationNewsPage({Key? key}) : super(key: key);

  @override
  _NotificationNewsPageState createState() => _NotificationNewsPageState();
}

class _NotificationNewsPageState extends State<NotificationNewsPage> {
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  final String title =
      'บัตรพนักงานเจ้าหน้าที่ตาม พ.ร.บควบคุมการส่งเสริมการตลาดอาหารสำหรับทารกและเด็ก';
  final String date = '2 กุมภาพันธ์ พ.ศ.2565';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(0),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage("assets/images/LogoAnamai.png"),
                    ),
                    title: Text('กรมอนามัย'),
                    subtitle:
                        Text('แจ้งเตือนโรคซอมบี้ - วันที่ 2 กุมภาพันธ์ 2565'),
                    isThreeLine: true,
                  ),
                ),
              );
            },
          )),
    );
  }
}
