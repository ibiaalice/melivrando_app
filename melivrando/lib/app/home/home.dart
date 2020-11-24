import 'package:flutter/material.dart';
import 'package:melivrando/app/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MeLivrando',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFE03148),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Image.asset('lib/assets/melivrando_icon.png'),
          ),
        ],
      ),
      drawer: DrawerHome(),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Expanded(child: ListViewHome()),
            )
          ],
        ),
      ),
    );
  }
}

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
