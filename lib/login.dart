import 'package:flutter/material.dart';
import 'package:login/home.dart';

class Login extends StatefulWidget {
  static String tag ='login-page';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 80.0,
          child: Image.asset('assets/beats-logo.png')),
    );
    final username = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'Panda',
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(15.0),
          hintStyle: TextStyle(color: Color(0xffFF7E92)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Colors.red,
              )),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
              borderRadius: BorderRadius.circular(30.0)
          ),

        ),
        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18.0));
    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      initialValue: '123456',
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.all(15.0),
          hintStyle: TextStyle(color: Color(0xffFF7E92)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Colors.red,
              )),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
              borderRadius: BorderRadius.circular(30.0)
          )
      ),
      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18.0)
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 0.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 50.0,
          onPressed: () {
            Navigator.of(context).pushNamed(Home.tag);
          },
          color: Theme.of(context).primaryColor,
          child: Text(
            'Login',
            style: (TextStyle(color: Colors.white, fontSize: 20.0)),
          ),
        ),
      ),
    );
    return Scaffold(
      body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 60.0),
              username,
              SizedBox(height: 10.0),
              password,
              SizedBox(height: 20.0),
              loginButton
            ],
          )),
    );
  }
}
