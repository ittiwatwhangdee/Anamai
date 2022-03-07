import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class RegisterElderPage extends StatefulWidget {
  @override
  State<RegisterElderPage> createState() => _RegisterElderPageState();
}

class _RegisterElderPageState extends State<RegisterElderPage> {
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
          "ลงทะเบียนขอบัตร",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(padding: EdgeInsets.all(4), children: <Widget>[
                  Container(
                    child: Text(
                      'บัตรประจำตัวผู้ดูแลผู้สูงอายุ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'ข้อมูลส่วนตัว',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //รหัสบัตรประจำตัวประชาชน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รหัสบัตรประจำตัวประชาชน',
                    counterText: '0/13',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //กรุณาเลือกคำนำหน้า
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือก",
                      labelText: "คำนำหน้า*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "นางสาว",
                      "นาง",
                      "นาย",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //ชื่อ
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'ชื่อ',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //นามสกุล
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'นามสกุล',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //เพศ
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือก",
                      labelText: "เพศ*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "ชาย",
                      "หญิง",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //หมู่เลือด
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือก",
                      labelText: "หมู่เลือด*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "เอ",
                      "บี",
                      "โอ",
                      "โอบี",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //วัน/เดือน/ปีเกิด
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'วัน/เดือน/ปีเกิด',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //อายุ(ปี)
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'อายุ(ปี)',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //อายุ(เดือน)
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'อายุ(เดือน)',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //เบอร์โทรศัพท์
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'เบอร์โทรศัพท์',
                    counterText: '0/10',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //อีเมล
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'อีเมล',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'ที่อยู่ปัจจุบัน',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //บ้านเลขที่
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'บ้านเลขที่',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //หมู่
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'หมู่',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //ถนน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'ถนน',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///จังหวัด
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกจังหวัดก่อน",
                      labelText: "จังหวัด*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "เชียงใหม่",
                      "เชียงราย",
                      "เพชรบุรี",
                      "เพชรบูรณ์",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกจังหวัดก่อน",
                  ),
                  Divider(),

                  //อำเภอ/เขต
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกอำเภอ/เขตก่อน",
                      labelText: "อำเภอ/เขต*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "-",
                      "-",
                      "-",
                      "-",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกอำเภอ/เขตก่อน",
                  ),
                  Divider(),

                  //ตำบล/แขวง
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกตำบล/แขวงก่อน",
                      labelText: "ตำบล/แขวง*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "-",
                      "-",
                      "-",
                      "-",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกตำบล/แขวงก่อน",
                  ),
                  Divider(),

                  ///รหัสไปรษณีย์
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รหัสไปรษณีย์',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'สถานที่จำหน่ายอาหาร',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //บ้านเลขที่
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'บ้านเลขที่',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //หมู่
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'หมู่',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //ถนน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'ถนน',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///จังหวัด
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกจังหวัด",
                      labelText: "จังหวัด*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "เชียงใหม่",
                      "เชียงราย",
                      "เพชรบุรี",
                      "เพชรบูรณ์",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกจังหวัด",
                  ),
                  Divider(),

                  //อำเภอ/เขต
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกอำเภอ/เขต",
                      labelText: "อำเภอ/เขต*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "-",
                      "-",
                      "-",
                      "-",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกอำเภอ/เขต",
                  ),
                  Divider(),

                  //ตำบล/แขวง
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกตำบล/แขวง",
                      labelText: "ตำบล/แขวง*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "-",
                      "-",
                      "-",
                      "-",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกตำบล/แขวง",
                  ),
                  Divider(),

                  ///รหัสไปรษณีย์
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รหัสไปรษณีย์',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///ชื่อร้านอาหาร
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'ชื่อร้านอาหาร',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  //องค์กรปกครองส่วนท้องถิ่น ณ พื้นที่ตั้งร้านอาหาร
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText:
                          "กรุณาเลือกองค์กรปกครองส่วนท้องถิ่น ณ พื้นที่ตั้งร้านอาหาร",
                      labelText:
                          "องค์กรปกครองส่วนท้องถิ่น ณ พื้นที่ตั้งร้านอาหาร",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "-",
                      "-",
                      "-",
                      "-",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem:
                        "กรุณาเลือกองค์กรปกครองส่วนท้องถิ่น ณ พื้นที่ตั้งร้านอาหาร",
                  ),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'ข้อมูลการขอบัตร',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //หลักสูตรที่ผ่านการอบกรม
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "หลักสูตรที่ผ่านการอบกรม",
                      labelText: "หลักสูตรที่ผ่านการอบกรม",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "ผู้ประกอบการ",
                      "ผู้สัมผัสอาหาร",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "หลักสูตรที่ผ่านการอบกรม",
                  ),
                  Divider(),

                  //องค์กรปกครองส่วนท้องถิ่น ณ พื้นที่ตั้งร้านอาหาร
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "ประเภท",
                      labelText: "ประเภท",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "กรมอนามัย",
                      "ศูนย์อนามัย",
                      "สำนักงานสาธารณสุขจังหวัด",
                      "องค์การปกครองส่วนท้องถิ่น",
                      "สถาบันฝึกอบรม",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "ประเภท",
                  ),
                  Divider(),

                  ///วันที่ผ่านการอบรม
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'วันที่ผ่านการอบรม',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 8, 8),
                    child: Text(
                      'อัพโหลดเอกสาร (คำสั่ง,ผลการฝึกอบรม)',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 8, 20),
                    child: Text(
                      '( .xls .xlsx .pdf .png .docx .rar .zip )',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 8, 25),
                    child: Text(
                      'ไม่ได้เลือกไฟล์',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green[400],
                        fixedSize: const Size(250, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'เลือกไฟล์',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  )),

                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        fixedSize: const Size(250, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'บันทึกข้อมูล',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ))
                ]))));
  }
}
