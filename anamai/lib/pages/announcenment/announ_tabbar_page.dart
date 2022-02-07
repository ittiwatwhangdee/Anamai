import 'package:flutter/material.dart';
import '../../home_page.dart';
import 'announ_news_page.dart';
import 'announ_vdo_page.dart';
import 'announ_page.dart';

void main() => runApp(const AnnouncenmentTabbarPage());

class AnnouncenmentTabbarPage extends StatefulWidget {
  const AnnouncenmentTabbarPage({Key? key}) : super(key: key);

  @override
  _AnnouncenmentTabbarPageState createState() =>
      _AnnouncenmentTabbarPageState();
}

class _AnnouncenmentTabbarPageState extends State<AnnouncenmentTabbarPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SFProTH_regular'),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
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
