import 'package:flutter/material.dart';
import '../../home_page.dart';
import 'noti_mycard_page.dart';
import 'noti_news_page.dart';

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
