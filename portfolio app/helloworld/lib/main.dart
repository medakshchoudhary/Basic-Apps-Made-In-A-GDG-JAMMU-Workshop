import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Daksh Choudhary',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'AI Enthusiast',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(onTap: () {
              final Uri _url = Uri.parse("Tel:+919055360013");
                launchUrl(_url);
            },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.phone),
                  title: Text('+919055360013'),
                ),
              ),
            ),
            GestureDetector(onTap: () {
              final Uri _url = Uri.parse('mailto:ch.daksh01@gmail.com');
                launchUrl(_url);
            },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.envelope),
                  title: Text('ch.daksh01@gmail.com'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                final Uri _url = Uri.parse('https://www.linkedin.com/in/dakshchoudhary/');
                launchUrl(_url);
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.globe),
                  title: Text('https://www.linkedin.com/in/dakshchoudhary/'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

