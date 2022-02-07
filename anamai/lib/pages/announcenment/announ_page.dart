import 'package:flutter/material.dart';

import '../../home_page.dart';
import 'announ_tabbar_page.dart';

class AnnouncenmentPage extends StatefulWidget {
  const AnnouncenmentPage({Key? key}) : super(key: key);

  static const String _title = 'ข่าวประชาสัมพันธ์';

  @override
  _AnnouncenmentPageState createState() => _AnnouncenmentPageState();
}

class _AnnouncenmentPageState extends State<AnnouncenmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          AnnouncenmentPage._title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  final String title =
      'บัตรพนักงานเจ้าหน้าที่ตาม พ.ร.บควบคุมการส่งเสริมการตลาดอาหารสำหรับทารกและเด็ก';
  final String date = '2 กุมภาพันธ์ พ.ศ.2565';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Card1.png'),
                      ListTile(
                        // leading: Image.asset('assets/images/LogoAnamai.png'),
                        title: Text('$title'),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AnnouncenmentTabbarPage()),
                              );
                            },
                            child: const Text('รายละเอียด >'),
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
