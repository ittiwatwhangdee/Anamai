import 'package:flutter/material.dart';

class AnnouncenmentNewsPage extends StatefulWidget {
  const AnnouncenmentNewsPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentNewsPageState createState() => _AnnouncenmentNewsPageState();
}

class _AnnouncenmentNewsPageState extends State<AnnouncenmentNewsPage> {
  final String title = 'รายงานผลการเฝ้าระวังเชิงรุก';
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
                      Image.asset('assets/images/Announ2.png'),
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
