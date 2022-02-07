import 'package:flutter/material.dart';
import '../../home_page.dart';
import 'announ_page.dart';

void main() => runApp(const AnnouncenmentTabbarPage());

class AnnouncenmentTabbarPage extends StatefulWidget {
  const AnnouncenmentTabbarPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentTabbarPageState createState() =>
      _AnnouncenmentTabbarPageState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _AnnouncenmentTabbarPageState extends State<AnnouncenmentTabbarPage>
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
              MaterialPageRoute(
                  builder: (context) => const AnnouncenmentPage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          '',
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
            Tab(text: 'ข่าวประชาสัมพันธ์'),
            Tab(text: 'วิดีโอประชาสัมพันธ์'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          AnnouncenmentNewsPage(),
          AnnouncenmentVdoPage(),
        ],
      ),
    );
  }
}

class AnnouncenmentNewsPage extends StatefulWidget {
  const AnnouncenmentNewsPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentNewsPageState createState() => _AnnouncenmentNewsPageState();
}

class _AnnouncenmentNewsPageState extends State<AnnouncenmentNewsPage> {
  final String title = 'รายงานผลการเฝ้าระวังเชิงรุก';
  final String date = '2 กุมภาพันธ์ พ.ศ.2565';
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Announ2.png'),
                      ListTile(
                        // leading: Image.asset('assets/images/LogoAnamai.png'),
                        title: Text('$title'),
                        subtitle: Text(
                          '$date',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('อ่านเพิ่มเติม >'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}

class AnnouncenmentVdoPage extends StatefulWidget {
  const AnnouncenmentVdoPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentVdoPageState createState() => _AnnouncenmentVdoPageState();
}

class _AnnouncenmentVdoPageState extends State<AnnouncenmentVdoPage> {
  final String title = 'พลังผู้สูงวัย ใส่ใจดูแลช่องปาก';
  final String date = '2 กุมภาพันธ์ พ.ศ.2565';
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 1,
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
                        title: Text('$title'),
                        subtitle: Text(
                          '$date',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('อ่านเพิ่มเติม >'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
