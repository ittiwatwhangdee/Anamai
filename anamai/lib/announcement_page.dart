import 'package:flutter/material.dart';

class AnnouncenmentPage extends StatelessWidget {
  const AnnouncenmentPage({Key? key}) : super(key: key);

  static const String _title = 'ข่าวประชาสัมพันธ์';

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
      body: Container(),
    );
  }
}
