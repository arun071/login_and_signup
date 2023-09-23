import 'package:flutter/material.dart';

class Large extends StatefulWidget {
  const Large({super.key});

  @override
  State<Large> createState() => _LargeState();
}

class _LargeState extends State<Large> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 80,
                    child: Text(
                      "       6\nProducts",
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
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
            
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Premium 👑",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        "Cookies",
                        style: TextStyle(
                          fontSize: 90,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " Chocochip",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.white)),
                          width: 150,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            children: [
                              Icon(Icons.book, color: Colors.white),
                              SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'information',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 410,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 80,
                    child: Text(
                      "  Add to \n   Cart",
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
