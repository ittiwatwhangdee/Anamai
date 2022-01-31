import 'package:anamai/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String _title = 'ข้อกําหนดและเงื่อนไขการใช้บริการ';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/LogoAnamai.png',
                height: 120,
                width: 170,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'ข้อกำหนดและเงื่อนไขการใช้แอปพลิเคชันระบบ\nการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้\nภารกิจของอนามัย (DOHCard Application)',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'ก่อนเริ่มใช้งานโปรดอ่านและทำความเข้าใจอย่างละเอียด และกรุณายอมรับข้อกำหนดและเงื่อนไข',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'โปรดอ่านและทำความเข้าใจข้อกำหนดและเงื่อนไขการใช้แอปพลิเคชั่นนี้อย่างละเอียด การที่ท่านได้ติดตั้งหรือเข้าใช้งานแอปพลิเคชันนี้แล้ว ถือว่าท่านตกลงยอมรับข้อกำหนดและเงื่อนไขการใช้แอปพลิเคชันแล้วทุกประการ หากท่านไม่สามารถยอมรับข้อกำหนดนโยบายความเป็นส่วนตัวนี้ได้ ขอให้ท่านปฏิเสธการใช้งานแอปพลิเคชันของท่านทันที',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                '1. วัตถุประสงค์',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'กรมอนามัย ได้จัดทำแอปพลิเคชัน ภายใต้ชื่อ "ระบบการขอมีบัตรประจำตัวและประกาศนียบัตรภายใต้ภารกิจของกรมอนามัย (DOHCard Application)"  ขึ้นโดยมีวัตถุประสงค์เพื่อ',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        fixedSize: const Size(120, 43),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text(
                        'ไม่ยอมรับ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade800,
                        fixedSize: const Size(120, 43),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'ยอมรับ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
