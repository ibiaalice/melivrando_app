import 'package:flutter/material.dart';

class Sugestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Sugestões',
            style: TextStyle(
                color: Colors.white54, fontSize: 55, fontFamily: 'ComicDylans'),
          ),
          Icon(
            Icons.alternate_email_sharp,
            size: 55,
            color: Colors.white54,
          ),
        ],
      ),
      onTap: () {
        //PÁGINAS DE NOVIDADES AQUI
      },
    );
  }
}
