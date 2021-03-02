import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Novidades!',
            style: TextStyle(
                color: Colors.white54, fontSize: 55, fontFamily: 'ComicDylans'),
          ),
          Icon(
            Icons.fiber_new_rounded,
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
