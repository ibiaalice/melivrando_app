import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ListTile(
                title: Text('Perfil'),
                onTap: () => print('perfil'),
              ),
              ListTile(
                title: Text('Configurações'),
                onTap: () => print('Configurações'),
              ),
              ListTile(
                title: Text('Sobre'),
                onTap: () => print('Sobre'),
              ),
            ],
          ),
          ListTile(
            title: Text('Sair'),
            onTap: () => print('Sair'),
          ),
        ],
      ),
    );
  }
}
