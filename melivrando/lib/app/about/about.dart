import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sobre essa versão',
        ),
        backgroundColor: Color(0xFFE03148),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Versão 0.0.2',
                  maxLines: 20,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Apenas para fins demostrativos',
                  maxLines: 20,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            )),
      ),
    );
  }
}
