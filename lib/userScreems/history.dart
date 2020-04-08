import 'package:flutter/material.dart';

class GirliesHistories extends StatefulWidget {
  @override
  _GirliesHistoriesState createState() => _GirliesHistoriesState();
}

class _GirliesHistoriesState extends State<GirliesHistories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Order History'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My History',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
