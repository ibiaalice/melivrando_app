import 'package:flutter/material.dart';
import 'package:melivrando/app/widgets/drawer.dart';
import 'package:melivrando/app/widgets/listview_home.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('oe');
        },
        child: Icon(Icons.book),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Expanded(child: ListViewHome()),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.pinkAccent,
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                  ListTile(
                    title: Text('askdhlahsldkh'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
