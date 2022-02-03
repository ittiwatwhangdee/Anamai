import 'package:flutter/material.dart';

class AnnouncenmentVdoPage extends StatefulWidget {
  const AnnouncenmentVdoPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentVdoPageState createState() => _AnnouncenmentVdoPageState();
}

class _AnnouncenmentVdoPageState extends State<AnnouncenmentVdoPage> {
  final String title = 'พลังผู้สูงวัย ใส่ใจดูแลช่องปาก';
  final String date = '2 กุมภาพันธ์ พ.ศ.2565';
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Announ1.png'),
                      ListTile(
                        // leading: Image.asset('assets/images/LogoAnamai.png'),
                        title: Text('$title'),
                        subtitle: Text(
                          '$date',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('อ่านเพิ่มเติม >'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
