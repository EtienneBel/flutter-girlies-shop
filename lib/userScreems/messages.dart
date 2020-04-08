import 'package:flutter/material.dart';

class GirliesMessages extends StatefulWidget {
  @override
  _GirliesMessagesState createState() => _GirliesMessagesState();
}

class _GirliesMessagesState extends State<GirliesMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Messages'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My Messages',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
