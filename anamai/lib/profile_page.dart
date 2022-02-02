import 'package:anamai/home_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'ข้อมูลส่วนตัว',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'ประเภทผู้ใช้งาน',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800]),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'เลือกประเภทผู้ใช้งาน*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'เลือกประเภทสมาชิก*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'เลือกประเภทบุคคล*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'ข้อมูลผู้ใช้งาน',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800]),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'เลขประจำตัวประชาชน*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'นาง*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'ชื่อ*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'นามสกุล*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()),
                                );
                              },
                              child: Text('ย้อนกลับ'),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('แก้ไขข้อมูลส่วนตัว'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
