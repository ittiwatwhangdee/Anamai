import 'package:anamai/noti_news_page.dart';

import 'home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const NotificationPage());

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: NotificationPage._title,
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
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text('แจ้งเตือน'),
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
          NewsPage(),
          MyCard(),
        ],
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  NewsPage({Key? key}) : super(key: key);

  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text("แจ้งเตือนข่าว"),
          ),
          new RaisedButton(
              child: new Text('Attention'),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: pressAttention ? Colors.grey : Colors.blue,
              onPressed: () {
                pressAttention = !pressAttention;
                print(pressAttention);
              })
        ],
      ),
    );
  }
}
