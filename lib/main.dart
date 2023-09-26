import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login/pages/auth_page.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/signup_page.dart';
import 'other/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.light(primary: Colors.amber),
        useMaterial3: true,
      ),
     
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      
    );
  }
}
