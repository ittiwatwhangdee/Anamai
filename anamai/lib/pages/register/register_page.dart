import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          'ลงทะเบียน',
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
                    child: Text(
                      'อัพโหลดรูปติดบัตร',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),

                  Image.asset(
                    'assets/images/icon_user.png',
                    height: 120,
                    width: 170,
                  ),

                  Divider(),

                  GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        fixedSize: const Size(250, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'เลือกรูปติดบัตร',
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

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 3, 8, 20),
                    child: Text(
                      'ข้อมูลสำหรับผู้ใช้งาน',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  ///อีเมลผู้ใช้งาน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'อีเมลผู้ใช้งาน',
                    // counterText: '0/13',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  ///รหัสผ่าน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รหัสผ่าน',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      size: 17,
                    ),
                  )),
                  Divider(),

                  ///ยืนยันรหัสผ่าน
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'ยืนยันรหัสผ่าน',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      size: 17,
                    ),
                  )),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'ประเภทผู้ใช้งาน',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //เลือกประเภทผู้ใช้งาน
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือก",
                      labelText: "เลือกประเภทผู้ใช้งาน*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "ประชาชน",
                      "ผู้ประกอบกิจการ",
                      "ผู้สัมผัสอาหาร",
                      "เจ้าหน้าที่รัฐ",
                      "ผู้ดูแลผู้สูงอายุ"
                      "หน่วยงานอบรม",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //เลือกประเภทสมาชิก
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือก",
                      labelText: "เลือกประเภทสมาชิก*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "ประชาชน/พนักงาน",
                      "สถานประกอบการ/ร้านค้า",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //เลือกประเภทบุคคล
                  DropdownSearch<String>(
                    validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                    dropdownSearchDecoration: InputDecoration(
                      hintText: "กรุณาเลือก",
                      labelText: "เลือกประเภทบุคคล*",
                      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                      border: OutlineInputBorder(),
                    ),
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: [
                      "นิติบุคคล",
                      "บุคคลธรรมดา",
                      "อื่นๆ",
                    ],
                    showClearButton: true,
                    onChanged: print,
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //อื่นๆ*โปรดระบุ
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'อื่นๆ*โปรดระบุ',
                    // helperText: 'Helper Text',
                    // counterText: '0 characters',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  Container(
                    padding: EdgeInsets.fromLTRB(0, 12, 8, 20),
                    child: Text(
                      'ข้อมูลผู้ใช้งาน',
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

                  ///รหัสไปรษณีย์
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'รหัสไปรษณีย์',
                    border: OutlineInputBorder(),
                  )),
                  Divider(),

                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        fixedSize: const Size(250, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'ย้อนกลับ',
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
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'ขอ OTP ยืนยันการสมัคร',
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
