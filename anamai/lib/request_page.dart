import 'package:flutter/material.dart';

void main() => runApp(const RequestPage());

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  static const String _title = 'สถานะการร้องเรียน';

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
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
          title: const Text(_title),
          backgroundColor: Colors.blue[800],
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final List<Map<String, String>> listOfColumns = [
    {
      "ลำดับ": "1",
      "หัวข้อการร้องเรียน": "หัวข้อ",
      "เรื่องร้องเรียน": "ทดสอบ",
      "วันที่ร้องเรียน": "02 ธันวาคม 2564",
      "สถานะการร้องเรียน": "ขอเอกสารเพิ่มเติม"
    },
  ];

  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('ลำดับ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('หัวข้อการร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('เรื่องร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('วันที่ร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('สถานะการร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text(
                    'แนบเอกสาร',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('1')),
                    DataCell(Text('หัวข้อ')),
                    DataCell(Text('ทดสอบ')),
                    DataCell(Text('02 ธันวาคม 2564')),
                    DataCell(Text(
                      'ขอเอกสารเพิ่มเติม',
                      style: TextStyle(
                          color: Colors.deepPurple[300],
                          fontWeight: FontWeight.bold),
                    )),
                    DataCell(IconButton(
                      icon: Icon(Icons.attach_file),
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
                                  height: 350,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(18.0),
                                              topRight:
                                                  const Radius.circular(18.0))),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'แนบไฟล์ของคุณ',
                                              style: TextStyle(fontSize: 16),
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
                                            RaisedButton(
                                              onPressed: () {
                                                print('Select Upload');
                                              },
                                              color: Colors.blueAccent,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              child: Text('อัพโหลด',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                      )),
                                ));
                      },
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
