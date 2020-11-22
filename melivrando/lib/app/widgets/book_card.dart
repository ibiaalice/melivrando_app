import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: Colors.black26,
        ),
      ),
      child: Container(
        width: 100,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [],
        ),
      ),
    );
  }
}

class ImageBook extends StatelessWidget {
  final String url;

  const ImageBook({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(url),
    );
  }
}
