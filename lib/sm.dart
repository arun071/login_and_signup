import 'package:flutter/material.dart';
import 'ls.dart';

class smcon1 extends StatelessWidget {
  const smcon1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //first child
          Container(

            
            
            padding: EdgeInsets.all(10),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
                color: Color(0xFF363841),
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(15),
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15),
                    bottomEnd: Radius.circular(75))),
            child: Column(
              // mainAxisAlignment:
              // MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Chocolate",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Chips",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PREMIUM 👑",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20 USD",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 1.0,
            bottom: 1.0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Large()),
                  );
                },
                icon: Icon(Icons.add),
                color: Colors.white,
              ),
            ),
          ),

          //second child
          Positioned(
              top: -70,
              left: 20,
              child: Image.asset(
                "assets/1.png",
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}

class smcon2 extends StatelessWidget {
  const smcon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //first child
          Container(
            padding: EdgeInsets.all(10),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
                color: Color(0xFF363841),
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(15),
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15),
                    bottomEnd: Radius.circular(75))),
            child: Column(
              // mainAxisAlignment:
              // MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Chocolate",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Chips",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PREMIUM 👑",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20 USD",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 1.0,
            bottom: 1.0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Large()),
                  );
                },
                icon: Icon(Icons.add),
                color: Colors.white,
              ),
            ),
          ),

          //second child
          Positioned(
              top: -70,
              left: 20,
              child: Image.asset(
                "assets/2.png",
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}

class smcon3 extends StatelessWidget {
  const smcon3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //first child
          Container(
            padding: EdgeInsets.all(10),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
                color: Color(0xFF363841),
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(15),
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15),
                    bottomEnd: Radius.circular(75))),
            child: Column(
              // mainAxisAlignment:
              // MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Chocolate",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Chips",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PREMIUM 👑",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20 USD",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 1.0,
            bottom: 1.0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Large()),
                  );
                },
                icon: Icon(Icons.add),
                color: Colors.white,
              ),
            ),
          ),

          //second child
          Positioned(
              top: -70,
              left: 20,
              child: Image.asset(
                "assets/3.png",
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}

class smcon4 extends StatelessWidget {
  const smcon4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //first child
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            width: 400.0,
            height: 150.0,
            decoration: BoxDecoration(
                color: Color(0xFF363841),
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(15),
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15),
                    bottomEnd: Radius.circular(75))),
            child: Row(
              children: [
                Image.asset(
                  "assets/1.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  // mainAxisAlignment:
                  // MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Chocolate",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Chips",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "PREMIUM 👑",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "20 USD",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            right: 100.0,
            bottom: 1.0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Large()),
                  );
                },
                icon: Icon(Icons.add),
                color: Colors.white,
              ),
            ),
          ),

          //second child
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            
            actions: [
            IconButton(
              // Within the SecondRoute widget
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back), alignment: Alignment.centerLeft,
            )
          ]),
          body: Center(
            child: Text(" Screen not designed yet "),
          )),
    );
  }
}
