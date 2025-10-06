import 'package:flutter/material.dart';
import 'pages/profile_page.dart';

void main() => runApp(InstagramProfile());

class InstagramProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfilePage(), debugShowCheckedModeBanner: false);
  }
}
