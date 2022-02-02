import 'package:flutter/material.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({Key? key}) : super(key: key);
  static const String _title = 'บัตรของฉัน';
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
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Image.asset('assets/images/Card1.png'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรพนักงานเจ้าหน้าที่ตาม พ.ร.บ ควบคุมการส่งเสริมการตลาดอาหารสำหรับทารกและเด็กเล็ก',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('ดูข้อมูลบัตร'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Card2.png',
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรส่งเสริมสุขภาพ',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('ดูข้อมูลบัตร'),
                    ),
                  ],
                ),
                // Image.asset('assets/images/Announ1.png'),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Card2.png',
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรกรมอนามัย',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('ดูข้อมูลบัตร'),
                    ),
                  ],
                ),
                // Image.asset('assets/images/Announ1.png'),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}