import 'package:flutter/material.dart';
import 'package:flutter_app/myscreen.dart';
import 'package:flutter_app/property.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int navitem = 0;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyScreen()));
              },
              child: Hero(
                tag: 'Avatr',
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
            ),
          ],
          elevation: 0,
          title: Center(
            child: Row(
              children: [
                Image(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/en/3/3a/Lovely_Professional_University_logo.png'),
                  width: deviceInfo.size.width / 8.1,
                ),
                Center(
                  child: Text(
                    '  My Dashboard',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )),
      body: Column(
        children: [
          Text(
            'Today\'s Timetable',
            style: TextStyle(color: Colors.white),
          ),
          Container(
            height: deviceInfo.size.height / 5,
            child: ListView(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              scrollDirection: Axis.horizontal,
              children: [
                cardly(
                  deviceInfo: deviceInfo,
                  classss: 'Pev 106',
                  time: '11-12 AM',
                ),
                cardly(
                  deviceInfo: deviceInfo,
                  classss: 'Any',
                  time: '12-01 PM',
                ),
                cardly(
                  deviceInfo: deviceInfo,
                  classss: 'Kuch',
                  time: '02-03 PM',
                ),
                cardly(
                  deviceInfo: deviceInfo,
                  classss: 'Math',
                  time: '04-05 PM',
                ),
              ],
            ),
          ),
          Rowwise(
            deviceInfo: deviceInfo,
            cast1: 'Announcements',
            cast2: 'Lecture Today',
            upr1: Icons.contactless,
            upr2: Icons.supervisor_account,
          ),
          Rowwise(
            deviceInfo: deviceInfo,
            cast1: 'Attendance',
            cast2: 'Assignments',
            upr1: Icons.date_range,
            upr2: Icons.library_books,
          ),
          Rowwise(
            deviceInfo: deviceInfo,
            cast1: 'Result',
            cast2: 'Exams Available',
            upr1: Icons.category,
            upr2: Icons.book_online,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orange,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: navitem,
        onTap: (index) {
          setState(() {
            navitem = index;
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
              if (index == 1) {
                print('loda');
              }
            }
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.approval), label: 'Happenings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.admin_panel_settings), label: 'RMS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics), label: 'Quick Quiz'),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
