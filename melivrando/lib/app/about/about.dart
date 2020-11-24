import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sobre essa versão',
        ),
        backgroundColor: Color(0xFFE03148),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in metus nisl. Fusce sed efficitur lorem. Donec at orci dui. Quisque posuere ipsum tellus, et facilisis nunc sodales at. Nam mollis posuere sollicitudin. Nulla justo dui, feugiat ac tempor eget, placerat ut libero. Donec quis justo ac neque bibendum tristique. Vivamus sed arcu a nunc pulvinar tincidunt. Vivamus rutrum mollis ante non tincidunt.Nam sodales fermentum pellentesque. Nulla commodo ante sit amet nisl consectetur, ac convallis neque consectetur. Quisque tempor et erat eu molestie. Praesent rutrum tempus suscipit. Duis ut nulla non libero semper consequat. Praesent ut tempor elit. Vestibulum a tortor erat. Proin nec tincidunt dui. Nunc tempor libero sit amet nulla pharetra, et pulvinar mi mollis. Phasellus a malesuada arcu, at efficitur ligula. Morbi pretium interdum fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed et quam quis ipsum tincidunt suscipit. Vivamus ut rhoncus elit. Etiam id velit tristique, eleifend elit ut, maximus enim. Suspendisse eu urna at metus porttitor lacinia. Donec vel vehicula massa, non volutpat eros. Cras vitae auctor lacus.',
            maxLines: 20,
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
