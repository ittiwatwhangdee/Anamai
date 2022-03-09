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

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'หน้าหลัก',
      style: optionStyle,
    ),
    Text(
      'บัตรของฉัน',
      style: optionStyle,
    ),
    Text(
      'ข้อมูลส่วนตัว',
      style: optionStyle,
    ),
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
                          builder: (context) => const NotificationPage()),
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
              title: const Text(
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
              title: const Text(
                'ข่าวประชาสัมพันธ์',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnnouncenmentPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.badge),
              title: const Text(
                'บัตรของฉัน',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyCardPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: const Text(
                'ลงทะเบียนขอบัตร',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterCardPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.copyright_outlined),
              title: const Text(
                'Health Point',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HealthPoint()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind),
              title: const Text(
                'แจ้งร้องเรียน',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ComplaintPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: const Text(
                'สถานะการร้องเรียน',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ComplaintCardPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: const Text(
                'ข้อมูลส่วนตัว',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: const Text(
                'ออกจากระบบ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
