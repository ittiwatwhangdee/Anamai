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
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Announ1.png'),
                      ListTile(
                        // leading: Image.asset('assets/images/LogoAnamai.png'),
                        title: const Text('บะหมี่กึ่งสำเร็จรูปโซเดียมสูง'),
                        subtitle: Text(
                          '2 กุมภาพันธ์ พ.ศ.2565',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(16.0),
                      //   child: Text(
                      //     'กรมอนามัย เตือน บะหมี่กึ่งสำเร็จรูปโซเดียมสูง กินบ่อย เสี่ยง ‘ความดันสูง – หัวใจวาย’',
                      //     style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      //   ),
                      // ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('อ่านเพิ่มเติม >'),
                          ),
                        ],
                      ),
                      // Image.asset('assets/images/Announ1.png'),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
