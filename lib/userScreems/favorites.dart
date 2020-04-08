import 'package:flutter/material.dart';

class GirliesFavorities extends StatefulWidget {
  @override
  _GirliesFavoritiesState createState() => _GirliesFavoritiesState();
}

class _GirliesFavoritiesState extends State<GirliesFavorities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Favorities'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My Favorites',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
