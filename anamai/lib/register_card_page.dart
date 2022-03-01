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
    return Scaffold(
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
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/register_card_1.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.all(16.0),
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
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/register_card_2.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
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
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Ink.image(
                    image: AssetImage('assets/images/Card2.png'),
                    fit: BoxFit.fill,
                    height: 200,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ]),
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
