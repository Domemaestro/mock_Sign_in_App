import 'package:flutter/material.dart';

import 'Animation/fade_animation.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    fade_animation(1,Text("Login",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )),
                    SizedBox(height: 10,),
                    fade_animation(1, Text("Welcome to MockApp",style: TextStyle(
                        fontSize: 18
                    ),
                    ),)
                  ],
                )
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50,),
                        fade_animation(1, Text("MockApp",style: TextStyle(
                            color: Colors.orange[800],
                            fontSize: 26
                        ),),),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, 0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child:fade_animation(1,  Column(
                            children: [
                              SizedBox(height: 10), // Adjust spacing
                              Container(
                                padding: EdgeInsets.all(20),

                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.orange[50],
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10), // Adjust spacing
                              Container(
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.orange[50],
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10), // Adjust spacing
                            ],
                          ),)
                        ),

                        SizedBox(height: 50,),
                        //the Button
                        fade_animation(1, GestureDetector(
                          onTap: (){
                            print("Login pressed");
                          },
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 80),
                            decoration: BoxDecoration(
                                color: Colors.orange[800],
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [BoxShadow(
                                    color: Color.fromRGBO(255, 95,27, 0.3),
                                    blurRadius: 20,
                                    offset: Offset(1, 6)
                                )]
                            ),
                            child: Center(
                              child: Text("Login",style: TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ),
            ),
          ],
        ),
      );
  }
}
