import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 100.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/beats-logo.png'),
                    fit: BoxFit.contain)),
            child: null,
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
            leading: Icon(Icons.new_releases),
            trailing: Container(
             height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: const Color(0xffE10023),
                shape: BoxShape.circle
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("100",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ],
              ),
            ),
            title: Text('News'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text('Logout'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
