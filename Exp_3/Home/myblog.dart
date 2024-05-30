import 'package:flutter/material.dart';
import 'package:flutter_first_app/App/ProfileCard.dart';
import 'myScaffold.dart';
class MyBlog extends StatelessWidget {
  const MyBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ProfileCard",
      home: ProfileCard(),
    );
  }
}