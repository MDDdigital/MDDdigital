import 'dart:html';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'my_drawer_header.dart';
import 'navigation_drawer.dart';

class MonApli extends StatelessWidget {
  const MonApli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //var currentPage = DrawerSection.dashboard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: Text("PORTFOLIO M2D"),
        ),
        body: Container(
          padding: EdgeInsets.all(50.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              myMenu(
                  title: 'MON PROFIL',
                  icon: Icons.person,
                  warna: Colors.orange),
              myMenu(
                  title: 'EDUCATION', icon: Icons.school, warna: Colors.orange),
              myMenu(
                  title: 'REALISATION',
                  icon: Icons.work_off,
                  warna: Colors.orange),
              myMenu(
                  title: 'CONTACT',
                  icon: Icons.contact_page,
                  warna: Colors.orange),
            ],
          ),
        ),
        drawer: NavigationDrawerWidget());
  }
}

class myMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor warna;

  myMenu({required this.title, required this.icon, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.deepOrange,
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
