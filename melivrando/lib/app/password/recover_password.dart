import 'package:flutter/material.dart';

class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/melivrando_icon.png',
              scale: 4,
            ),
            SizedBox(height: 20),
            Text(
              'MeLivrando',
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'ComicDylans',
                color: Colors.white,
                inherit: false,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Recuperar Senha',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'ComicDylans',
                color: Colors.redAccent,
                inherit: false,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(80)),
              child: Expanded(
                child: Column(
                  children: [
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
                        hintText: 'Email de recuperação',
                      ),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      onPressed: () => {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('E-mail de recuperação enviado'),
                              );
                            })
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        "Recuperar Senha",
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
            SizedBox(width: 30)
          ],
        ),
      ),
    );
  }
}
