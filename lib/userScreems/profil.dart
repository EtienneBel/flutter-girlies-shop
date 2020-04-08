import 'package:flutter/material.dart';

class GirliesProfils extends StatefulWidget {
  @override
  _GirliesProfilsState createState() => _GirliesProfilsState();
}

class _GirliesProfilsState extends State<GirliesProfils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Profil Settings'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'My Profil Settings',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
