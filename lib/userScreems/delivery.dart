import 'package:flutter/material.dart';

class GirliesDelivery extends StatefulWidget {
  @override
  _GirliesDeliveryState createState() => _GirliesDeliveryState();
}

class _GirliesDeliveryState extends State<GirliesDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Delivery Address'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My Delivery Address',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
