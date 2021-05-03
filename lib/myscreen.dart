import 'package:flutter/material.dart';
import 'package:flutter_app/property.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.orange[800],
              child: Column(
                children: [
                  Center(
                    child: Hero(
                      tag: 'Avatr',
                      child: Container(
                        decoration: new BoxDecoration(shape: BoxShape.circle),
                        child: new Image(
                          image: AssetImage('images/profile.jpg'),
                          height: deviceInfo.size.height / 7,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Ravinshu Makkar',
                    style: TextStyle(fontSize: deviceInfo.size.width / 18),
                  ),
                  Text(
                    '11908152',
                    style: TextStyle(fontSize: deviceInfo.size.width / 18),
                  ),
                  Text(
                    'P132:B.Tech. (Computer Science & Engineering)(2019)',
                    style: TextStyle(fontSize: deviceInfo.size.width / 25),
                  )
                ],
              ),
              height: deviceInfo.size.height / 3.3,
            ),
            Container(
              child: Card(
                child: Center(
                  child: Text(
                    'Basic Info',
                    style: TextStyle(fontSize: deviceInfo.size.width / 18),
                  ),
                ),
              ),
              height: deviceInfo.size.height / 9,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PadText(
                  Nametext: 'Father\'s Name',
                ),
                Padtext(
                  NameText: 'Joginder Makkar',
                ),
                PadText(
                  Nametext: 'Mother\'s Name',
                ),
                Padtext(
                  NameText: 'Jyoti Makkar',
                ),
                PadText(
                  Nametext: 'Permanent Address',
                ),
                Padtext(
                  NameText:
                      'H.No. 383, Sector-7, Gohana, Gohana, 131301, Distt: Sonipat (Haryana) India',
                ),
                PadText(
                  Nametext: 'Correspondence Address',
                ),
                Padtext(
                  NameText:
                      'H.No. 383, Sector-7, Gohana, Gohana, 131301, Distt: Sonipat (Haryana) India',
                ),
                PadText(
                  Nametext: 'Contact Number',
                ),
                Padtext(
                  NameText: '+91 9255469840',
                ),
                PadText(
                  Nametext: 'Email Address',
                ),
                Padtext(
                  NameText: 'mravinshu@gmail.com',
                ),
                PadText(
                  Nametext: 'Date of birth',
                ),
                Padtext(
                  NameText: '16 May 2000',
                ),
                PadText(
                  Nametext: 'Gender',
                ),
                Padtext(
                  NameText: 'Male',
                ),
              ],
            ),
            Container(
              child: Card(
                child: Center(
                  child: Text(
                    'Academic Info',
                    style: TextStyle(fontSize: deviceInfo.size.width / 18),
                  ),
                ),
              ),
              height: deviceInfo.size.height / 9,
            ),
            PadText(Nametext: 'To be continued')
          ],
        ),
      ),
    );
  }
}
