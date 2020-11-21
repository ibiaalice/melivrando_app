import 'package:flutter/material.dart';
import 'package:melivrando/app/user/user.dart';

class ProfileInfo extends StatelessWidget {
  final User user;

  const ProfileInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: double.infinity,
        child: Card(
          color: Color(0xFF79ACE2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(
              color: Colors.black26,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Avatar(url: user.getProfileUrl()),
              Infomation(
                name: user.getName(),
                age: user.getAge(),
                email: user.getEmail(),
                bio: user.getBio(),
              ),
            ],
          ),
        ));
  }
}

class Avatar extends StatelessWidget {
  final String url;

  const Avatar({Key key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(url),
    );
  }
}

class Infomation extends StatelessWidget {
  final String name;
  final String age;
  final String bio;
  final String email;

  const Infomation({Key key, this.name, this.age, this.bio, this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 10),
          Title(name: name, age: age),
          Bio(bio: bio),
          Buttom(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class Bio extends StatelessWidget {
  final String bio;
  const Bio({Key key, this.bio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Bio:',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: Text(
              bio,
              overflow: TextOverflow.clip,
              maxLines: 200,
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String name;
  final String age;

  const Title({Key key, this.name, this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFEB8D9A),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          name + ', ' + age + ' anos',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'ComicDylans',
          ),
        ),
      ),
    );
  }
}

class Buttom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.redAccent,
      ),
      width: double.infinity,
      height: 20,
      child: FlatButton(
        onPressed: () {
          print('editar perfil');
        },
        child: Text(
          'Editar Perfil',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
