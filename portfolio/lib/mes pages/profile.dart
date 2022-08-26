import 'dart:ui';

import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class PageProfile extends StatelessWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('MON PROFIL'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            img: user.img,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          //NumberWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  const NumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '', 'HTML 70%'),
          buildButton(context, '', 'CSS 60%'),
          buildButton(context, '', 'PHP 60%'),
          buildButton(context, '', 'LARAVEL 50'),
          buildButton(context, '', 'CCNA 50'),
          buildButton(context, '', 'WINDOWS SERVER 80%'),
          buildButton(context, '', 'PHOTOSHOP 80%'),
          buildButton(context, '', 'ILLUSTRATOR 70%'),
          buildButton(context, '', 'REFDIGITAL 50%'),
        ],
      );
}

Widget buildButton(BuildContext context, String value, String text) =>
    MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 3),
      onPressed: () {},
      child: Column(
          //mainAxisAlignment: MainAxisSize.min,
          //mainAxisSize: MainAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
    );

Widget buildName(User user) => Column(
      children: [
        Text(
          user.nom,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          user.mail,
          style: TextStyle(color: Colors.orange),
        )
      ],
    );

class User {
  final String img;
  final String nom;
  final String mail;
  final String about;
  final String isDarkMode;

  const User({
    required this.img,
    required this.nom,
    required this.mail,
    required this.about,
    required this.isDarkMode,
  });
}

class UserPreferences {
  static const myUser = User(
      img: 'images/papa.png',
      nom: 'MAMADOU DIARRA DIA',
      mail: 'momodiarradia@gmail.com',
      about:
          'Je suis un technicien informatique de nationalité Sénégalaise qui vit au Sénégal  J ai fait mes études informatiques jusqu à avoir la licence au Sénégal  J ai suivi ces études avec beaucoup de passion parce que j aime l’informatique et j aime continuer à me développer  Avant de commencer mes études informatiques  j avais commencé des études en physique et chimie car après le bac j ai été orienté à la faculté des sciences et technique  mais étant passion de la technologie Je me suis reconverti en informaticien et aujourd’hui je suis  technicien supérieur en  informatique  Ceux-ci montent un de mes valeurs qui est la capacité d’adoptation En plus de la capacité d adoption   je suis très ouvert d’esprit  sportif   et joueur d’équipe  je suis aussi très persévérant car je suis toujours à la  recherche de solution   Mon vecu  quotidien se resume par mon engagement dans ma communauté d ou mon  parcour de volontaire  au Consortium  Jeunesse Sénégal  ',
      isDarkMode: 'false');
}

class ProfileWidget extends StatelessWidget {
  final String img;
  final VoidCallback onClicked;
  const ProfileWidget({Key? key, required this.img, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          )
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(img);
    return ClipOval(
        child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: image,
        fit: BoxFit.cover,
        width: 128,
        height: 128,
        child: InkWell(
          onTap: onClicked,
        ),
      ),
    ));
  }

  Widget buildEditIcon(Color color) => builCircle(
        color: Colors.white,
        all: 3,
        child: builCircle(
          color: color,
          all: 8,
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget builCircle({
    required Widget child,
    required Color color,
    required double all,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}

Widget buildAbout(User user) => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'A PROPOS',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 17),
          Text(
            user.about,
            style: TextStyle(fontSize: 18, height: 1.6),
          ),
          const SizedBox(height: 10),
          Text(
            'COMPETENCES',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 17),
          Text(
            'HTML 70%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'CSS 60%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'PHP 70%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'LARAVEL 50%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'WORDPRESS 90%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'CCNA 50%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'WINDOWS SERVER 80%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'PHOTOSHOP 80%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'ILLUSTRATOR 70%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
          Text(
            'REFDIGITAL 50%',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          const SizedBox(height: 9),
        ],
      ),
    );
