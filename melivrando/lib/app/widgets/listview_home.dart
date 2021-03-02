import 'package:flutter/material.dart';
import 'package:melivrando/app/widgets/news.dart';
import 'package:melivrando/app/widgets/classics.dart';
import 'package:melivrando/app/widgets/sugestion.dart';

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 360,
          color: Colors.blue,
          child: News(),
        ),
        Container(
          width: 360,
          color: Colors.amber,
          child: Classic(),
        ),
        Container(
          width: 360,
          color: Colors.deepPurple,
          child: Sugestions(),
        ),
      ],
    );
  }
}
