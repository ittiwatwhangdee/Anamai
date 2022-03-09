import 'package:flutter/material.dart';

class MyCardBusinessPage extends StatefulWidget {
  const MyCardBusinessPage({Key? key}) : super(key: key);
  static const String _title = 'บัตรของฉัน';

  @override
  State<MyCardBusinessPage> createState() => _MyCardBusinessPageState();
}

class _MyCardBusinessPageState extends State<MyCardBusinessPage> {
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
          MyCardBusinessPage._title,
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
          padding: const EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                ListTile(
                  title: Text('บัตรประจำตัวผู้ประกอบกิจการ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                ListTile(
                  title: Text('QR Code',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Divider(),
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/icon_mycard_qrcode.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    width: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
                Divider(),
                ListTile(
                  title: Text(
                    'ใช้โทรศัพท์ Scan เพื่อดูข้อมูลบัตร',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
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
