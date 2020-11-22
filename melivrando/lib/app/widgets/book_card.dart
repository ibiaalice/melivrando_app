import 'package:flutter/material.dart';
import 'package:melivrando/domain/entities/book/book.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isRead(book.status) ? Colors.greenAccent : Color(0xFFEB8D9A),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageBook(url: book.urlImage),
            TitleBook(title: book.title),
          ],
        ),
      ),
    );
  }

  bool isRead(String status) {
    return status == 'LIDO';
  }
}

class ImageBook extends StatelessWidget {
  final String url;

  const ImageBook({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url),
        ),
      ),
      height: 80,
      width: 70,
    );
  }
}

class TitleBook extends StatelessWidget {
  final String title;

  const TitleBook({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 20,
        width: double.infinity,
        child: Text(
          title,
          overflow: TextOverflow.visible,
          maxLines: 10,
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
