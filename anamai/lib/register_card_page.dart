import 'package:flutter/material.dart';

class RegisterCardPage extends StatefulWidget {
  const RegisterCardPage({Key? key}) : super(key: key);
  static const String _title = 'ลงทะเบียนขอบัตรประจำตัว';

  @override
  _RegisterCardPageState createState() => _RegisterCardPageState();
}

class _RegisterCardPageState extends State<RegisterCardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: RegisterCardPage._title,
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
            RegisterCardPage._title,
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
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Image.asset('assets/images/register_card_1.png'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'เจ้าพนักงานท้องถิ่น / เจ้าพนักงานสารธารณสุข / ซึ่งผู้ได้รับการแต่งตั้งจากเจ้าภาพพนักงานท้องถิ่น',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      'ลงทะเบียน',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/register_card_2.png',
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'บัตรประจำตัวผู้ดูแลผู้สูงอายุ (Caregiver) และบัตรประจำตัวผู้จัดการดูแลผู้สูงอายุ (Care Manager)',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      'ลงทะเบียน',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  )),
                )
                // Image.asset('assets/images/Announ1.png'),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Card2.png',
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'แบบฟอร์ม',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      'ลงทะเบียน',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  )),
                )
                // Image.asset('assets/images/Announ1.png'),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
