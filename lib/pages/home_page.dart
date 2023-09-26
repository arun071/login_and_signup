import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'ChatPage.dart';
import 'package:login/services/auth_service.dart';
class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff282A30),
        body: SafeArea(
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
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () async {
                  FirebaseAuth.instance.signOut();
                  await GoogleSignIn().signOut();
                },
                child: Text("Logout"),
              )
              // ,_buildUserList()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('error');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('loading');
        }
        return ListView(
            children: snapshot.data!.docs
                .map<Widget>((doc) => _buildUserList())
                .toList());
      },
    );}
  //individual user
  Widget _buildUserListItem(DocumentSnapshot document) {
    Map<String,dynamic> data = document.data()! as Map<String, dynamic>;
    //all user except the currrent
    if(_auth.currentUser!.email!=data['email']){
      return ListTile(
        title: Text(data['email']),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(
           
            receiverUserEmail: data['email'],
          receiverUserID: data['uid'],
          ),));
           
        },
      );
    }
    else{
      return Container(
        child: Text("error"),
      );
    }

  }

}
  
