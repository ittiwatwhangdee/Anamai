import 'package:anamai/pages/mycard/mycard_page.dart';
import 'package:anamai/pages/register_card/register_card_page.dart';
import 'complaint_status_card.dart';
import 'pages/announcenment/announ_page.dart';
import 'complaint_page.dart';
import 'health_point_page.dart';
import 'pages/notifications/noti_page.dart';
import 'profile_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Image.asset(
        'assets/images/LogoAnamai.png',
        width: 150,
      ),
    ),
    MyCardPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/images/LogoAnamai.png',
          height: 45,
          fit: BoxFit.cover,
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                  icon: Icon(Icons.notifications_none_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage()),
                    );
                  }),
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1565C0),
              ),
              accountName: Text("Ittiwat Whangdee"),
              accountEmail: Text("s6130613045@phuket.psu.ac.th"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "I",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'หน้าหลัก',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.ballot_outlined),
              title: Text(
                'ข่าวประชาสัมพันธ์',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnnouncenmentPage()),
                );
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.badge),
            //   title: Text(
            //     'บัตรของฉัน',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   trailing: Icon(Icons.arrow_right),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => MyCardPage()),
            //     );
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text(
                'ลงทะเบียนขอบัตร',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterCardPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.copyright_outlined),
              title: Text(
                'Health Point',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HealthPoint()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind),
              title: Text(
                'แจ้งร้องเรียน',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComplaintPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: Text(
                'สถานะการร้องเรียน',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComplaintCardPage()),
                );
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.account_circle_outlined),
            //   title: Text(
            //     'ข้อมูลส่วนตัว',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   trailing: Icon(Icons.arrow_right),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => ProfilePage()),
            //     );
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text(
                'ออกจากระบบ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'บัตรของฉัน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'ข้อมูลส่วนตัว',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF1565C0),
        onTap: _onItemTapped,
      ),
    );
  }
}
