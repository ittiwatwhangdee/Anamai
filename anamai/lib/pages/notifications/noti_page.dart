import 'package:flutter/material.dart';
import '../../home_page.dart';

void main() => runApp(const NotificationPage());

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          'แจ้งเตือน',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blue[800],
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.black,
          indicatorWeight: 0,
          indicatorColor: Colors.white,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.white),
          tabs: const <Widget>[
            Tab(text: 'ข่าว'),
            Tab(text: 'บัตรของฉัน'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          NotificationNewsPage(),
          NotificationMyCardPage(),
        ],
      ),
    );
  }
}

class NotificationNewsPage extends StatefulWidget {
  const NotificationNewsPage({Key? key}) : super(key: key);

  @override
  _NotificationNewsPageState createState() => _NotificationNewsPageState();
}

class _NotificationNewsPageState extends State<NotificationNewsPage> {
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  final String title =
      'บัตรพนักงานเจ้าหน้าที่ตาม พ.ร.บควบคุมการส่งเสริมการตลาดอาหารสำหรับทารกและเด็ก';
  final String date = '2 กุมภาพันธ์ พ.ศ.2565';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(0),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage("assets/images/LogoAnamai.png"),
                    ),
                    title: Text('กรมอนามัย'),
                    subtitle:
                        Text('แจ้งเตือนโรคซอมบี้ - วันที่ 2 กุมภาพันธ์ 2565'),
                    isThreeLine: true,
                  ),
                ),
              );
            },
          )),
    );
  }
}

class NotificationMyCardPage extends StatefulWidget {
  const NotificationMyCardPage({Key? key}) : super(key: key);

  @override
  _NotificationMyCardPageState createState() => _NotificationMyCardPageState();
}

class _NotificationMyCardPageState extends State<NotificationMyCardPage> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}
