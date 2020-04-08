import 'package:flutter/material.dart';

class GirliesCart extends StatefulWidget {
  @override
  _GirliesCartState createState() => _GirliesCartState();
}

class _GirliesCartState extends State<GirliesCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Cart'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My Cart',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
