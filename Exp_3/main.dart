// Create an Android App to design the Profile card for an Employee using server Image/Local Image. 


import'package:flutter_first_app/home/myblog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/App/ProfileCard.dart';

void main() => runApp(MyBlog()); // excecution start


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
        shadowColor: Colors.amber,
        child: Center(
            child: Text(
      "HELLO WORLD",
      textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400
              ),
    )));

    //return Center(
    //  child:Text("Hello World",textDirection: TextDirection.ltr,)
    //);
  }
}
