import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ls.dart';
import 'sm.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
  final user=FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff282A30),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
                  Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly
                children: [
                  SizedBox(
                        height: 10,

                  ),
                  Row(
                    
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/user.png"),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                      user!.email.toString(),
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 80,
                        child: Text(
                          "Products",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        
                        children: [
                          Text(
                            " Cookies",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            " Premium",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.orange,
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                  Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                " Seemore",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          smcon1(),
                          SizedBox(width: 20),
                          smcon2(),
                          SizedBox(width: 20),
                          smcon3(),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Offers",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Text(
                        "SeeMore",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  smcon4(),
                ],
              ),
            ),
        
              TextButton(
                onPressed: () async {
                  FirebaseAuth.instance.signOut();
                },
                child: Text("Logout"),
              )
            ],
          )),
        ),
      ),
    );
  }
}
