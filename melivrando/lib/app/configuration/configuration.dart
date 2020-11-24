import 'package:flutter/material.dart';

class Configuration extends StatefulWidget {
  @override
  _ConfigurationState createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  @override
  Widget build(BuildContext context) {
    bool _valueNotification = true;
    bool _valueSound = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Configuração'),
        backgroundColor: Color(0xFFE03148),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Deseja receber notificações?',
                style: TextStyle(
                  color: Color(0xFFE03148),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                value: _valueNotification,
                activeColor: Color(0xFFE03148),
                onChanged: (bool value) {
                  setState(() {
                    _valueNotification = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Ativar Sons?',
                style: TextStyle(
                  color: Color(0xFFE03148),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                value: _valueSound,
                activeColor: Color(0xFFE03148),
                onChanged: (bool value) {
                  setState(() {
                    _valueSound = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
