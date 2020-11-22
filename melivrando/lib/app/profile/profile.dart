import 'package:flutter/material.dart';
import 'package:melivrando/app/widgets/book_card.dart';
import 'package:melivrando/app/widgets/profile_info.dart';
import 'package:melivrando/domain/entities/book/book.dart';
import 'package:melivrando/domain/entities/user/user.dart';

class Profile extends StatelessWidget {
  final User user = User();

  @override
  Widget build(BuildContext context) {
    final List<Book> books = user.getBooks();

    return Scaffold(
      body: ListView(
        children: [
          ProfileInfo(user: user),
          Container(
            child: Row(
              children: [
                BookCard(
                  book: books[0],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
