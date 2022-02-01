import 'package:flutter/material.dart';

class AnnouncenmentPage extends StatelessWidget {
  const AnnouncenmentPage({Key? key}) : super(key: key);

  static const String _title = 'ข่าวประชาสัมพันธ์';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        fontFamily: 'SFProTH_regular',
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          title: const Text(
            _title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/LogoAnamai.png'),
                    title: const Text('มาตรการปลอดภัยสำหรับองค์กร'),
                    subtitle: Text(
                      'วันอังคารที่ 2 กุมภาพันธ์ พ.ศ.2565',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'ข้อเสนอการยกระดับมาตรการ กรณีเปิดสถานประกอบการในพื้นที่ควบคุมสูงสุดและเข้มงวด มาตรการปลอดภัยสำหรับองค์กร (Covid Free Setting)',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('อ่านรายละเอียด'),
                      ),
                    ],
                  ),
                  // Image.asset('assets/images/Announ1.png'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/LogoAnamai.png'),
                    title: const Text('บะหมี่กึ่งสำเร็จรูปโซเดียมสูง'),
                    subtitle: Text(
                      'วันอังคารที่ 2 กุมภาพันธ์ พ.ศ.2565',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'กรมอนามัย เตือน บะหมี่กึ่งสำเร็จรูปโซเดียมสูง กินบ่อย เสี่ยง ‘ความดันสูง – หัวใจวาย’',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('อ่านรายละเอียด'),
                      ),
                    ],
                  ),
                  // Image.asset('assets/images/LogoAnamai.png'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/LogoAnamai.png'),
                    title: const Text('บะหมี่กึ่งสำเร็จรูปโซเดียมสูง'),
                    subtitle: Text(
                      'วันอังคารที่ 2 กุมภาพันธ์ พ.ศ.2565',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'กรมอนามัย เตือน บะหมี่กึ่งสำเร็จรูปโซเดียมสูง กินบ่อย เสี่ยง ‘ความดันสูง – หัวใจวาย’',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('อ่านรายละเอียด'),
                      ),
                    ],
                  ),
                  // Image.asset('assets/images/LogoAnamai.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
