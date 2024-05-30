
import 'package:flutter/material.dart';
import 'package:flutter_first_app/home/CustomButton.dart';
class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  fun_setting()
  {
    print("SETTING IS CLICKED");
  }

  funInkWell()
  {
    print("CLICKEDDDDD>>>>>>");
  }

  final iconemail=Icons.email_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Ordering",
          style:TextStyle(
              color: Colors.blue
          )
          ,),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(onPressed: ()=>print("EMAIL"), icon: Icon(iconemail)),
          IconButton(onPressed: fun_setting, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){


          }, icon: Icon(Icons.menu))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=>null,
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        hoverColor: Colors.lightGreen,
        child: Icon(Icons.add),


      ),
      backgroundColor: Colors.red.shade100,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app)),
        BottomNavigationBarItem(icon: Icon(Icons.account_box)),
        BottomNavigationBarItem(icon: Icon(Icons.switch_account))

      ],
        backgroundColor: Colors.red,
        onTap: (int i)=>print(i+1),),

      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("HELLO WORLD",
                style: TextStyle(
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400
                ),
              ),
              InkWell(
                child: Text("Show!!!",
                style: TextStyle(fontWeight: FontWeight.w100,fontStyle: FontStyle.normal,fontSize: 25),),
              onTap:funInkWell ,

              ),
                CustomButtonShow()
            ],
          )

      ),



    );
  }
}
