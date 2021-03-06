import 'package:flutter/material.dart';
import 'package:melivrando/app/about/about.dart';
import 'package:melivrando/app/configuration/configuration.dart';
import 'package:melivrando/app/home/home.dart';
import 'package:melivrando/app/profile/profile.dart';

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              OptionDrawer(
                title: 'Perfil',
                icon: Icons.account_circle,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
              OptionDrawer(
                title: 'Configurações',
                icon: Icons.settings,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Configuration()));
                },
              ),
              OptionDrawer(
                title: 'Sobre',
                icon: Icons.info,
                onTap: () {
                  // fazer página perfil
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ],
          ),
          OptionDrawer(
            title: 'Sair',
            icon: Icons.cancel_sharp,
            onTap: () {
              // fazer página perfil
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
      ),
    );
  }
}

class OptionDrawer extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  const OptionDrawer({Key key, this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFE03148),
          ),
        ),
        leading: Icon(
          icon,
          color: Color(0xFFE03148),
        ),
        onTap: onTap,
      ),
    );
  }
}
