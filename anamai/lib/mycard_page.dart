import 'package:flutter/material.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({Key? key}) : super(key: key);
  static const String _title = 'บัตรของฉัน';

  @override
  _MyCardPageState createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          MyCardPage._title,
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

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/icon_card_business.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรประจำตัวผู้ประกอบกิจการและผู้สัมผัสอาหาร',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('ดูข้อมูลบัตร'),
                      onPressed: () {},
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
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/icon_card_local.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรเจ้าพนักงานท้องถิ่น / เจ้าพนักงานสาธารณสุข',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('ดูข้อมูลบัตร'),
                      onPressed: () {},
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
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/icon_card_acd.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรประจำตัวผู้ดูแลผู้สูงอายุ (Caregiver)',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text('ลงทะเบียน'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
