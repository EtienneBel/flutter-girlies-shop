import 'package:flutter/material.dart';

class GirliesAboutUs extends StatefulWidget {
  @override
  _GirliesAboutUsState createState() => _GirliesAboutUsState();
}

class _GirliesAboutUsState extends State<GirliesAboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('About Us'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My About Us',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
