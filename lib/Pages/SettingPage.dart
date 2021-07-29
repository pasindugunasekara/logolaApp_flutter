import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.pushNamed(context, '/insidepage2');
          },
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('settings'),
            ),
            ListTile(),
            ListTile(),
            ListTile(),
            ListTile(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.people),
              title: Text(
                'Follow invite friends',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.face),
              title: Text(
                'Privacy',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.security),
              title: Text(
                'Security',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/secutity');
              },
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.supervised_user_circle),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.details),
              title: Text(
                'About',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.help),
              title: Text(
                'Help',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
