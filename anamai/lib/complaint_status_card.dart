import 'package:flutter/material.dart';
import '../../home_page.dart';

class ComplaintCardPage extends StatefulWidget {
  const ComplaintCardPage({Key? key}) : super(key: key);

  static const String _title = 'สถานะการร้องเรียน';

  @override
  _ComplaintCardPageState createState() => _ComplaintCardPageState();
}

class _ComplaintCardPageState extends State<ComplaintCardPage> {
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
          ComplaintCardPage._title,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/LogoAnamai.png"),
                        ),
                        title: Text('หัวข้อการร้องเรียน'),
                        subtitle: Text(
                          'วันที่ร้องเรียน',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'เรื่องร้องเรียน',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlatButton(
                              onPressed: () {
                                // Perform some action
                              },
                              child: const Text(
                                'สถานะ : ขอเอกสารเพิ่มเติม',
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                            Container(
                              child: RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                label: Text(
                                  'แนบไฟล์',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(
                                  Icons.attach_file,
                                  color: Colors.white,
                                ),
                                textColor: Colors.white,
                                splashColor: Colors.blue,
                                color: Colors.lightBlue,
                                onPressed: () {
                                  showModalBottomSheet(
                                      enableDrag: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      backgroundColor: Colors.transparent,
                                      barrierColor: Colors.black38,
                                      context: context,
                                      builder: (context) => Container(
                                            height: 250,
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: const Radius
                                                                .circular(18.0),
                                                            topRight: const Radius
                                                                    .circular(
                                                                18.0))),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'แนบไฟล์ของคุณ',
                                                        style: TextStyle(
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        '* ขนาดไฟล์ไม่เกิน 2GB',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.grey),
                                                      ),
                                                      SizedBox(
                                                        height: 7,
                                                      ),
                                                      RaisedButton.icon(
                                                        onPressed: () {},
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10.0))),
                                                        label: Text(
                                                          'อัพโหลด',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        icon: Icon(
                                                          Icons.backup,
                                                          color: Colors.white,
                                                        ),
                                                        textColor: Colors.white,
                                                        splashColor:
                                                            Colors.blue,
                                                        color: Colors.lightBlue,
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ));
                                },
                              ),
                            ),
                          ],
                        ),
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
