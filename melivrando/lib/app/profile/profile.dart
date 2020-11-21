import 'package:flutter/material.dart';
import 'package:melivrando/app/user/user.dart';
import 'package:melivrando/app/widgets/profile_info.dart';

class Profile extends StatelessWidget {
  User user = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileInfo(user: user),
        ],
      ),
    );
  }
}
