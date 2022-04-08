import 'dart:convert';
import 'package:anamai/pages/register/register_pdpa_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'forgot_password_page.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    var url = "http://192.168.1.8/flutter_login/login.php";
    var response = await http.post(Uri.parse(url), body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      final snackBar = SnackBar(
        content: Row(
          children: <Widget>[
            Icon(
              Icons.check_circle_rounded,
              color: Colors.white,
            ),
            Text('  เข้าสู่ระบบสำเร็จ'),
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
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/BackgroundLogin2.png"),
            fit: BoxFit.fill,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/LogoAnamai.png',
                height: 100,
                width: 150,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'ระบบการขอมีบัตรประจำตัวและประกาศนียบัตร\nภายใต้ภารกิจของกรมอนามัย',
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: 370,
                width: 305,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'เข้าสู่ระบบ',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'กรุณาเข้าสู่ระบบของคุณ',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'กรุณาใส่ชื่อผู้ใช้งาน';
                          }
                          return null;
                        },
                        controller: user,
                        decoration: InputDecoration(
                          labelText: 'ชื่อผู้ใช้งาน',
                          labelStyle: TextStyle(fontSize: 13),
                          suffixIcon: Icon(
                            FontAwesomeIcons.envelope,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'กรุณาใส่รหัสผ่าน';
                          }
                          return null;
                        },
                        obscureText: true,
                        controller: pass,
                        decoration: InputDecoration(
                          labelText: 'รหัสผ่าน',
                          labelStyle: TextStyle(fontSize: 13),
                          suffixIcon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPdpaPage()),
                              );
                            },
                            child: Text(
                              'ลงทะเบียน',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blue[800]), //aligment
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordPage()),
                              );
                            },
                            child: Text(
                              'ลืมรหัสผ่าน?',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blue[800]), //aligment
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade800,
                          fixedSize: const Size(250, 43),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        login();
                      },
                      // onPressed: () => doLogin(),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
