import 'package:flutter/material.dart';

class CustomButtonShow extends StatelessWidget {
  const CustomButtonShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        var snackbar=SnackBar(content: Text("ANDROID"));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        
      },
      child:Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,borderRadius:BorderRadius.circular(50)
        ),
        child: Text("SHOW!!"),
      )

    );
  }
}
