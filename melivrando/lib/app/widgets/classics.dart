import 'package:flutter/material.dart';

class Classic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Clássicos',
            style: TextStyle(
                color: Colors.white54, fontSize: 55, fontFamily: 'ComicDylans'),
          ),
          Icon(
            Icons.book_rounded,
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
