import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class ComplaintPage extends StatefulWidget {
  const ComplaintPage({Key? key}) : super(key: key);

  static const String _title = 'แจ้งร้องเรียน';

  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          ComplaintPage._title,
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

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.fromLTRB(0, 3, 8, 20),
                    child: Text(
                      'ข้อมูลส่วนตัว',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  ///รหัสบัตรประจำตัวประชาชน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รหัสบัตรประจำตัวประชาชน',
                    // counterText: '0/13',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///หน่วยงานร้องเรียน
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกคำนำหน้า",
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
                    selectedItem: "กรุณาเลือกคำนำหน้า",
                  ),
                  Divider(),

                  ///ชื่อ
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'ชื่อ',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///นามสกุล
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'นามสกุล',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///เบอร์โทรศัพท์
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'เบอร์โทรศัพท์',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///เบอร์โทรศัพท์
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'อีเมล',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'รายละเอียดการร้องเรียน',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  ///หน่วยงานร้องเรียน
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกหน่วยงานร้องเรียน",
                      labelText: "หน่วยงานร้องเรียน*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "หน่วยงานร้องเรียน",
                      "ประชาชน",
                      "ผู้ประกอบกิจการ",
                      "ผู้สัมผัสอาหาร",
                      "เจ้าหน้าที่รัฐ",
                      "ผู้ดูแลผู้สูงอายุ"
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกหน่วยงานร้องเรียน",
                  ),
                  Divider(),

                  ///หมวดหมู่ร้องเรียน
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกหมวดหมู่ร้องเรียน",
                      labelText: "หมวดหมู่ร้องเรียน*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "บัตรประจำตัวผู้ประกอบกิจการและผู้สัมผัสอาหาร",
                      "บัตรประจำตัวเจ้าพนักงานท้องถิ่น เจ้าพนักงานสาธารณสุข ผู้ซึ่งได้รับการแต่งตั้ง",
                      "บัตรประจำตัวพนักงานเจ้าหน้าที่ตามพระราชบัญญัติควบคุมการส่งเสริมการตลาดอาหาร",
                      "บัตรประจำตัวผู้จัดการ การดูแลผู้สูงอายุ (Care Manager) และผู้ดูแลผู้สูงอายุ",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกหมวดหมู่ร้องเรียน",
                  ),
                  Divider(),

                  ///หัวข้อการร้องเรียน
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกหัวข้อการร้องเรียน",
                      labelText: "หัวข้อการร้องเรียน*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "ทดสอบชื่อหัวข้อการร้องเรียน(1)",
                      "ทดสอบชื่อหัวข้อการร้องเรียน(2)",
                      "ทดสอบชื่อหัวข้อการร้องเรียน(3)",
                      "ทดสอบชื่อหัวข้อการร้องเรียน(4)",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือกหัวข้อการร้องเรียน",
                  ),
                  Divider(),

                  ///รายละเอียดการร้องเรียน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รายละเอียดการร้องเรียน',
                    // helperText: 'Helper Text',
                    // counterText: '0 characters',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///รายละเอียดการร้องเรียน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'สถานที่ต้องการร้องเรียน',
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
                      hintText: "กรุณาเลือกอำเภอ",
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
                    selectedItem: "กรุณาเลือกอำเภอ",
                  ),
                  Divider(),

                  //อำเภอ/เขต
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือกตำบล",
                      labelText: "ตำบล*",
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
                    selectedItem: "กรุณาเลือกตำบล",
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
                    padding: EdgeInsets.fromLTRB(0, 10, 5, 25),
                    child: Text(
                      'Location',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 8, 8),
                    child: Text(
                      'แนบไฟล์',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 8, 20),
                    child: Text(
                      '( pdf, png, jpg, jpeg, mp4, avi, wmv, mov, flv )',
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
                      'ส่งเรื่องร้องเรียน',
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
