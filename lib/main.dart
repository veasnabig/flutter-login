import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Login.tag: (context) => Login(),
    Home.tag:(context)=>Home()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffE10023)
      ),
        home: Login(),
        routes:routes
    );
  }
}
