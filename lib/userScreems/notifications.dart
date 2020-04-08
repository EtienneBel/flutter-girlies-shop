import 'package:flutter/material.dart';

class GirliesNotifications extends StatefulWidget {
  @override
  _GirliesNotificationsState createState() => _GirliesNotificationsState();
}

class _GirliesNotificationsState extends State<GirliesNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Order Notifications'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My Notifications',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
