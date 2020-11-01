import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MeLivrando',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFE03148),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Image.asset('lib/assets/melivrando_icon.png'),
          ),
        ],
      ),
    );
  }
}
