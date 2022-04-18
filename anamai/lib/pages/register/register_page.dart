import 'dart:convert';
import 'package:anamai/login_page.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String selecttypeuser = '';
  String selecttypemembership = '';
  String selecttypeperson = '';
  String selectprefix = '';
  String selectgender = '';

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController typeuser = TextEditingController();
  TextEditingController typemembership = TextEditingController();
  TextEditingController typeperson = TextEditingController();
  TextEditingController card = TextEditingController();
  TextEditingController prefix = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address_no = TextEditingController();
  TextEditingController address_moo = TextEditingController();
  TextEditingController address_road = TextEditingController();

  Future register() async {
    var url = "http://192.168.1.7/flutter_login/register.php";
    var response = await http.post(Uri.parse(url), body: {
      "username": user.text,
      "password": pass.text,
      "typeuser": selecttypeuser,
      "typemembership": selecttypemembership,
      "typeperson": selecttypeperson,
      "idcard": card.text,
      "prefix": selectprefix,
      "firstname": fname.text,
      "lastname": lname.text,
      "gender": selectgender,
      "phone": phone.text,
      "address_no": address_no.text,
      "address_moo": address_moo.text,
      "address_road": address_road.text,
    });

    var data = json.decode(response.body);
    if (data == "Error") {
      final snackBar = SnackBar(
        content: Row(
          children: <Widget>[
            Icon(
              Icons.cancel,
              color: Colors.white,
            ),
            Text('  ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง!'),
          ],
        ),
        backgroundColor: Colors.red,
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(
        content: Row(
          children: <Widget>[
            Icon(
              Icons.check_circle_rounded,
              color: Colors.white,
            ),
            Text('  สมัครสมาชิกสำเร็จ'),
          ],
        ),
        backgroundColor: Colors.green,
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

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
                      controller: user,
                      decoration: InputDecoration(
                        hintText: 'อีเมลผู้ใช้งาน',
                        // counterText: '0/13',
                        border: OutlineInputBorder(),
                      )),
                  Divider(),

                  ///รหัสผ่าน
                  TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'รหัสผ่าน',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          size: 17,
                        ),
                      )),
                  Divider(),

                  // ///ยืนยันรหัสผ่าน
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'ยืนยันรหัสผ่าน',
                  //   border: OutlineInputBorder(),
                  //   suffixIcon: Icon(
                  //     Icons.visibility_off,
                  //     size: 17,
                  //   ),
                  // )),
                  // Divider(),

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
                    onChanged: (String? newValue) {
                      setState(() {
                        selecttypeuser = newValue!;
                        print(selecttypeuser);
                      });
                    },
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
                    onChanged: (String? newValue) {
                      setState(() {
                        selecttypemembership = newValue!;
                        print(selecttypemembership);
                      });
                    },
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
                    onChanged: (String? newValue) {
                      setState(() {
                        selecttypeperson = newValue!;
                        print(selecttypeperson);
                      });
                    },
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  // //อื่นๆ*โปรดระบุ
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'อื่นๆ*โปรดระบุ',
                  //   // helperText: 'Helper Text',
                  //   // counterText: '0 characters',
                  //   border: OutlineInputBorder(),
                  // )),
                  // Divider(),

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
                      controller: card,
                      decoration: InputDecoration(
                        hintText: 'รหัสบัตรประจำตัวประชาชน',
                        // counterText: '0/13',
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
                    onChanged: (String? newValue) {
                      setState(() {
                        selectprefix = newValue!;
                        print(selectprefix);
                      });
                    },
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  //ชื่อ
                  TextField(
                      controller: fname,
                      decoration: InputDecoration(
                        hintText: 'ชื่อ',
                        border: OutlineInputBorder(),
                      )),
                  Divider(),

                  //นามสกุล
                  TextField(
                      controller: lname,
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
                    onChanged: (String? newValue) {
                      setState(() {
                        selectgender = newValue!;
                        print(selectgender);
                      });
                    },
                    popupItemDisabled: (String? s) =>
                        s?.startsWith('I') ?? false,
                    clearButtonSplashRadius: 20,
                    selectedItem: "กรุณาเลือก",
                  ),
                  Divider(),

                  // //หมู่เลือด
                  // DropdownSearch<String>(
                  //   validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                  //   dropdownSearchDecoration: InputDecoration(
                  //     hintText: "กรุณาเลือก",
                  //     labelText: "หมู่เลือด*",
                  //     contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                  //     border: OutlineInputBorder(),
                  //   ),
                  //   mode: Mode.MENU,
                  //   showSelectedItems: true,
                  //   items: [
                  //     "เอ",
                  //     "บี",
                  //     "โอ",
                  //     "โอบี",
                  //   ],
                  //   showClearButton: true,
                  //   onChanged: print,
                  //   popupItemDisabled: (String? s) =>
                  //       s?.startsWith('I') ?? false,
                  //   clearButtonSplashRadius: 20,
                  //   selectedItem: "กรุณาเลือก",
                  // ),
                  // Divider(),

                  // //วัน/เดือน/ปีเกิด
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'วัน/เดือน/ปีเกิด',
                  //   border: OutlineInputBorder(),
                  // )),
                  // Divider(),

                  // //อายุ(ปี)
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'อายุ(ปี)',
                  //   border: OutlineInputBorder(),
                  // )),
                  // Divider(),

                  // //อายุ(เดือน)
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'อายุ(เดือน)',
                  //   border: OutlineInputBorder(),
                  // )),
                  // Divider(),

                  //เบอร์โทรศัพท์
                  TextField(
                      controller: phone,
                      decoration: InputDecoration(
                        hintText: 'เบอร์โทรศัพท์',
                        // counterText: '0/10',
                        border: OutlineInputBorder(),
                      )),
                  Divider(),

                  // //อีเมล
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'อีเมล',
                  //   border: OutlineInputBorder(),
                  // )),
                  // Divider(),

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
                      controller: address_no,
                      decoration: InputDecoration(
                        hintText: 'บ้านเลขที่',
                        border: OutlineInputBorder(),
                      )),
                  Divider(),

                  //หมู่
                  TextField(
                      controller: address_moo,
                      decoration: InputDecoration(
                        hintText: 'หมู่',
                        border: OutlineInputBorder(),
                      )),
                  Divider(),

                  //ถนน
                  TextField(
                      controller: address_road,
                      decoration: InputDecoration(
                        hintText: 'ถนน',
                        border: OutlineInputBorder(),
                      )),
                  Divider(),

                  // ///จังหวัด
                  // DropdownSearch<String>(
                  //   validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                  //   dropdownSearchDecoration: InputDecoration(
                  //     hintText: "กรุณาเลือกจังหวัดก่อน",
                  //     labelText: "จังหวัด*",
                  //     contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                  //     border: OutlineInputBorder(),
                  //   ),
                  //   mode: Mode.MENU,
                  //   showSelectedItems: true,
                  //   items: [
                  //     "เชียงใหม่",
                  //     "เชียงราย",
                  //     "เพชรบุรี",
                  //     "เพชรบูรณ์",
                  //   ],
                  //   showClearButton: true,
                  //   onChanged: print,
                  //   popupItemDisabled: (String? s) =>
                  //       s?.startsWith('I') ?? false,
                  //   clearButtonSplashRadius: 20,
                  //   selectedItem: "กรุณาเลือกจังหวัดก่อน",
                  // ),
                  // Divider(),

                  // //อำเภอ/เขต
                  // DropdownSearch<String>(
                  //   validator: (v) => v == null ? "กรุณาเลือกข้อมูล" : null,
                  //   dropdownSearchDecoration: InputDecoration(
                  //     hintText: "กรุณาเลือกอำเภอ/เขตก่อน",
                  //     labelText: "อำเภอ/เขต*",
                  //     contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                  //     border: OutlineInputBorder(),
                  //   ),
                  //   mode: Mode.MENU,
                  //   showSelectedItems: true,
                  //   items: [
                  //     "-",
                  //     "-",
                  //     "-",
                  //     "-",
                  //   ],
                  //   showClearButton: true,
                  //   onChanged: print,
                  //   popupItemDisabled: (String? s) =>
                  //       s?.startsWith('I') ?? false,
                  //   clearButtonSplashRadius: 20,
                  //   selectedItem: "กรุณาเลือกอำเภอ/เขตก่อน",
                  // ),
                  // Divider(),

                  // ///รหัสไปรษณีย์
                  // TextField(
                  //     decoration: InputDecoration(
                  //   hintText: 'รหัสไปรษณีย์',
                  //   border: OutlineInputBorder(),
                  // )),
                  // Divider(),

                  // SizedBox(
                  //   height: 20,
                  // ),

                  // GestureDetector(
                  //     child: ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       primary: Colors.grey,
                  //       fixedSize: const Size(250, 43),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10))),
                  //   child: const Text(
                  //     'ย้อนกลับ',
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 17,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   onPressed: () {},
                  // )),

                  // SizedBox(
                  //   height: 20,
                  // ),

                  GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade800,
                        fixedSize: const Size(250, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'ยืนยันการสมัคร',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      register();
                    },
                  ))
                ]))));
  }
}
