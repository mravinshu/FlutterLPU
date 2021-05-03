import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

// ignore: camel_case_types
class attandence extends StatefulWidget {
  attandence({this.app});
  final FirebaseApp app;
  @override
  _attandenceState createState() => _attandenceState();
}

// ignore: camel_case_types
class _attandenceState extends State<attandence> {
  final refenceDatabase = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {
    final ref = refenceDatabase.reference();
    final movieName = 'Reg Number';
    MediaQueryData deviceinfo = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 5,
            child: Container(
              width: deviceinfo.size.width,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Aggrigate Attendance',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        print('Data updated');
                        ref
                            .child('K20 PRO')
                            .child('SoC')
                            .set('Qualcomm SM8150 Snapdragon 855')
                            .asStream();
                        ref.once().toString();
                      },
                      child: Text('95%'))
                ],
              ),
            ),
          ),
          atendacecard(deviceinfo: deviceinfo),
          atendacecard(deviceinfo: deviceinfo),
          atendacecard(deviceinfo: deviceinfo),
          atendacecard(deviceinfo: deviceinfo),
          atendacecard(deviceinfo: deviceinfo),
          atendacecard(deviceinfo: deviceinfo),
        ],
      ),
    );
  }
}

class atendacecard extends StatelessWidget {
  const atendacecard({
    Key key,
    @required this.deviceinfo,
  }) : super(key: key);

  final MediaQueryData deviceinfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            width: deviceinfo.size.width / 1.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'CSE 306 - COMPUTER NETWORKS',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, bottom: 10, top: 10),
                  child: Text('Faculty: Dr. G.Akilarasu'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                  child: Text('Faculty Seating: NA'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                  child: Text('Last Attended: 3/10/2021'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                  child: Text('Attended/Delivered: 23/23'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                  child: Text('Duty Leaves: 0'),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: deviceinfo.size.width / 7,
                width: deviceinfo.size.width / 7,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                  value: 0.95,
                  semanticsLabel: 'Hello',
                ),
              ),
              SizedBox(
                  height: deviceinfo.size.width / 7,
                  width: deviceinfo.size.width / 7,
                  child: Center(
                      child: Text(
                    '95%',
                    style: TextStyle(fontSize: 15),
                  ))),
            ],
          ),
        ],
      ),
    );
  }
}
