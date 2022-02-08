import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('สถานะการร้องเรียน'),
      ),
      body: Column(
        children: [
          PaginatedDataTable(
            source: _data,
            // header: const Text('สถานะการแจ้งร้องเรียน'),
            columns: const [
              DataColumn(
                  label: Text('ลำดับ',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('หัวข้อการร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('เรื่องร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('วันที่ร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('สถานะการร้องเรียน',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('แนบเอกสาร',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
            columnSpacing: 100,
            horizontalMargin: 20,
            rowsPerPage: 9,
            showCheckboxColumn: false,
          ),
        ],
      ),
    );
  }
}

// The "soruce" of the table
class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      10,
      (index) => {
            "id": index,
            "topic": "หัวข้อ $index",
            "title": index,
            "date": "วันที่ 8 กุมภาพันธ์ 2565",
            "status": "ขอเอกสารเพิ่มเติม",
            "attach": index,
          });

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["topic"])),
      DataCell(Text(_data[index]["title"].toString())),
      DataCell(Text(_data[index]["date"].toString())),
      DataCell(Text(
        _data[index]["status"].toString(),
        style: TextStyle(
            color: Colors.deepPurple[300], fontWeight: FontWeight.bold),
      )),
      DataCell(IconButton(
        icon: Icon(Icons.attach_file),
        onPressed: () {},
      )),
    ]);
  }
}
