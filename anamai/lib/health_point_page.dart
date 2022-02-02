import 'package:flutter/material.dart';

class HealthPoint extends StatelessWidget {
  const HealthPoint({Key? key}) : super(key: key);

  static const String _title = 'คะแนน Health Point';

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
                  label: Text('รายละเอียด',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('สถานะ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('คะแนน',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('วันที่',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
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
