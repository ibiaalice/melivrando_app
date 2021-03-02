import 'package:flutter/material.dart';
import 'package:melivrando/app/widgets/book_grid.dart';
import 'package:melivrando/app/widgets/profile_info.dart';
import 'package:melivrando/domain/entities/book/book.dart';
import 'package:melivrando/domain/entities/user/user.dart';

class Profile extends StatelessWidget {
  final User user = User();

  @override
  Widget build(BuildContext context) {
    List<Book> books = user.getBooks();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Perfil'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileInfo(user: user),
          Expanded(
            child: BookGrid(books: books),
          )
        ],
      ),
    );
  }
}
