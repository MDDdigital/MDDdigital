import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('MES CONTACTS'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/papa.png'),
          ),
          Text(
            "MAMADOU DIARRA DIA",
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          Text(
            "DEV WEB, GRAPHISTE",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 19.0,
            width: 169.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    '+221 78 155 69 27',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'momodiarradia@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
