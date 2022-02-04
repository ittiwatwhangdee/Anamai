import 'package:flutter/material.dart';

class RequestPage2 extends StatefulWidget {
  const RequestPage2({Key? key}) : super(key: key);

  @override
  _RequestPage2State createState() => _RequestPage2State();
}

class _RequestPage2State extends State<RequestPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          title: const Text(
            'สถานะการร้องเรียน',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  final List<Map> _products = List.generate(5, (i) {
    return {
      "id": i + 1,
      "title": "หัวข้อ $i",
      "name": "เรื่องร้องเรียน $i",
      "date": "2 ธันวาคม 2565",
      "status": "ขอเอกสารเพิ่มเติม",
      "attach": "",
    };
  });

  int _currentSortColumn = 0;

  bool _isAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: _currentSortColumn,
          sortAscending: _isAscending,
          headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
          columns: [
            const DataColumn(
                label: Text('ลำดับ',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const DataColumn(
                label: Text('หัวข้อการร้องเรียน',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const DataColumn(
                label: Text('เรื่องร้องเรียน',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const DataColumn(
                label: Text('วันที่ร้องเรียน',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const DataColumn(
                label: Text('สถานะการร้องเรียน',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const DataColumn(
                label: Text('แนบเอกสาร',
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ],
          rows: _products.map((item) {
            return DataRow(cells: [
              DataCell(Text(item['id'].toString())),
              DataCell(Text(item['title'])),
              DataCell(Text(item['name'].toString())),
              DataCell(Text(item['date'].toString())),
              DataCell(Text(
                item['status'].toString(),
                style: TextStyle(
                    color: Colors.deepPurple[300], fontWeight: FontWeight.bold),
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
                                        topLeft: const Radius.circular(18.0),
                                        topRight: const Radius.circular(18.0))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'แนบไฟล์ของคุณ',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '* ขนาดไฟล์ไม่เกิน 2GB',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
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
                                                BorderRadius.circular(10.0)),
                                        child: Text('อัพโหลด',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      )
                                    ],
                                  ),
                                )),
                          ));
                },
              )),
            ]);
          }).toList(),
        ),
      ),
    )));
  }
}
