import 'package:anamai/pages/mycard/mycard_business_page.dart';
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyCardBusinessPage()),
                        );
                      },
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
                    'บัตรเจ้าพนักงานท้องถิ่น / เจ้าพนักงานสาธารณสุข / ผู้ซึ่งได้รับการแต่งตั้งจากเจ้าพนักงานท้องถิ่น',
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
                    'บัตรพนักงานเจ้าหน้าที่ตาม พรบ. ควบคุมการส่งเสริมการตลาดอาหารสำหรับทารกและเด็กเล็ก',
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
                    image: AssetImage('assets/images/icon_card_etc.png'),
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
                    'บัตรอื่นๆ กรมอนามัย',
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
                ListTile(
                  title: Text('บัตรประจำตัวผู้ประกอบกิจการ'),
                ),
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/icon_mycard_business.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
                ListTile(
                  title: Text(
                    'วันหมดอายุบัตร : 06 มี.ค. 2568',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text(
                            'แก้ไขข้อมูล',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.create_outlined,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          splashColor: Colors.blue,
                          color: Colors.lightBlue,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text(
                            'ดาวน์โหลด PDF',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.picture_as_pdf_outlined,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          splashColor: Colors.green[300],
                          color: Colors.green,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
