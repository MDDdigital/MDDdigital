import 'package:flutter/material.dart';
import 'package:portfolio/mes%20pages/education.dart';
import 'package:portfolio/mes%20pages/profile.dart';
import 'package:portfolio/mes%20pages/realisation.dart';
import 'package:portfolio/mes%20pages/user_page.dart';

import 'contact.dart';
import 'my_drawer_header.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'MAMADOU DIARRA DIA';
    final email = 'momodiarradia@gmail.com';
    final urlImage = 'images/papa.png';

    return Drawer(
      child: Material(
        color: Colors.orangeAccent,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserPage(
                    name: name,
                    urlImage: urlImage,
                    email: email,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'profile',
                icon: Icons.person,
                onClicked: () => selectedItem(context, 0)),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'education',
                icon: Icons.cast_for_education,
                onClicked: () => selectedItem(context, 1)),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'realisation',
                icon: Icons.work_off,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'contact',
                icon: Icons.contact_page,
                onClicked: () => selectedItem(context, 5)),
          ],
        ),
      ),
    );
  }

  buildHeader(
          {required String urlImage,
          required String name,
          required String email,
          required VoidCallback onClicked}) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(urlImage),
              ),
              //Expanded(child: Text(name)),
            ],
          ),
        ),
      );
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PageProfile(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PageEdu(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyRea(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ContactPage(),
      ));
      break;
  }
}
