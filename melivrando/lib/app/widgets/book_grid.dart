import 'package:flutter/material.dart';
import 'package:melivrando/app/widgets/book_card.dart';
import 'package:melivrando/domain/entities/book/book.dart';

class BookGrid extends StatelessWidget {
  final List<Book> books;

  const BookGrid({Key key, @required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        books.length,
        (i) {
          return BookCard(book: books[i]);
        },
      ),
    );
  }
}
