import 'package:flutter/material.dart';
class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'),fit: BoxFit.cover
          )
      ),

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation:0,
        ),
        backgroundColor: Colors.transparent,
        body:Stack(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 35,top: 15),
                  child:const Text('Create\nAccount',style: TextStyle(
                      color: Colors.white,
                      fontSize: 33
                  ),)
              ),

              SingleChildScrollView(
                child: Container(
                    padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.28,left:35,right:35),
                    child:Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black),
                              ),
                              hintText: 'Name',
                              hintStyle: const TextStyle(color:Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black),
                              ),
                              hintText: 'Email',
                              hintStyle: const TextStyle(color:Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color:Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 40,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Sign In',style:TextStyle(
                              fontSize:27,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,

                            )),

                            CircleAvatar(
                              radius: 30,
                              backgroundColor: const Color(0xff4c505b),
                              child:IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.pushNamed(context, 'Login');
                                },
                                icon: const Icon(Icons.arrow_forward),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                            height: 20
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            TextButton(
                                onPressed: (){
                                  //Navigator.pushNamed(context, 'Login');
                                } ,
                                child: const Text('Sign Up',style:TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.white,
                                )
                                )
                            ),

                          ],
                        ),
                      ],
                    )
                ),
              ),
            ]
        ),
      ),
    );
  }
}