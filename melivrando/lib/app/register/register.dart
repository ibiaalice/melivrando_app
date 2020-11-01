import 'package:flutter/material.dart';
import 'package:melivrando/app/home/home.dart';
import 'package:melivrando/app/login/login.dart';
import 'package:melivrando/app/password/recover_password.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF79ACE2),
        child: Expanded(
          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset('lib/assets/melivrando_icon.png', scale: 3),
                  Text(
                    'MeLivrando',
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'ComicDylans',
                      color: Colors.white,
                      inherit: false,
                    ),
                  ),
                  Text(
                    'Registrar Usuário',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'ComicDylans',
                      color: Colors.greenAccent,
                      inherit: false,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(80)),
                padding: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          icon: Icon(
                            Icons.account_circle_outlined,
                            size: 50,
                            color: Color(0xFFEB8D9A),
                          ),
                          hintText: 'Nome do Usuário',
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          icon: Icon(
                            Icons.account_circle,
                            size: 50,
                            color: Color(0xFFEB8D9A),
                          ),
                          hintText: 'Email',
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 50,
                            color: Color(0xFFEB8D9A),
                          ),
                          alignLabelWithHint: false,
                          hintText: 'Senha',
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.cancel_sharp,
                            size: 50,
                            color: Color(0xFFEB8D9A),
                          ),
                          alignLabelWithHint: false,
                          hintText: 'Repetir Senha',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()))
                        },
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          "Registrar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'ComicDylans'),
                        ), //Text
                        color: Color(0xFFEB8D9A),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  FlatButton(
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecoverPassword()));
                      })
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
