import 'package:flutter/material.dart';
import 'package:flutter_app/attendance.dart';

// ignore: camel_case_types
class cardly extends StatelessWidget {
  cardly({this.classss, @required this.time, this.deviceInfo});

  final String classss;
  final String time;

  final MediaQueryData deviceInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shadowColor: Colors.orange,
      child: Column(
        children: [
          Container(
            height: 18,
            width: deviceInfo.size.width / 2.5,
            child: Center(child: Text(time)),
            color: Colors.orange[800],
          ),
          Center(
              child: Text(
            classss,
            style: TextStyle(color: Colors.grey),
          )),
        ],
      ),
    );
  }
}

class Rowwise extends StatelessWidget {
  Rowwise(
      {this.deviceInfo,
      @required this.cast1,
      @required this.cast2,
      @required this.upr1,
      @required this.upr2});
  final String cast1;
  final String cast2;
  final IconData upr1;
  final IconData upr2;
  final MediaQueryData deviceInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Card(
          child: Container(
            height: deviceInfo.size.height / 6,
            color: Colors.orange[800],
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => attandence(),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    upr1,
                    size: deviceInfo.size.width / 10,
                  ),
                  Text(
                    cast1,
                    style: TextStyle(fontSize: deviceInfo.size.width / 16),
                  ),
                ],
              ),
            ),
          ),
        )),
        Expanded(
            child: Card(
          child: Container(
            height: deviceInfo.size.height / 6,
            color: Colors.orange[800],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  upr2,
                  size: deviceInfo.size.width / 10,
                ),
                Text(
                  cast2,
                  style: TextStyle(fontSize: deviceInfo.size.width / 16),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}

class Padtext extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const Padtext({@required this.NameText});

  // ignore: non_constant_identifier_names
  final String NameText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        NameText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

class PadText extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const PadText({@required this.Nametext});

  // ignore: non_constant_identifier_names
  final String Nametext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Text(
        Nametext,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
