import 'package:flutter/material.dart';
import 'package:melivrando/app/home/home.dart';
import 'package:melivrando/app/password/recover_password.dart';
import 'package:melivrando/app/register/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF79ACE2),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'lib/assets/melivrando_icon.png',
              scale: 4,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'MeLivrando',
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'ComicDylans',
                color: Colors.white,
                shadows: [
                  Shadow(
                      color: Colors.black12,
                      blurRadius: 100,
                      offset: Offset.infinite),
                  Shadow(color: Colors.black26, blurRadius: 0.2)
                ],
                inherit: false,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
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
                            style:
                                TextStyle(color: Colors.black45, fontSize: 20),
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
                            style:
                                TextStyle(color: Colors.black45, fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.cancel_sharp,
                                size: 50,
                                color: Color(0xFFEB8D9A),
                              ),
                              alignLabelWithHint: false,
                              hintText: 'Senha',
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
                              "Entrar",
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
                        child: Text('Registrar-se'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
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
          ],
        ),
      ),
    );
  }
}
