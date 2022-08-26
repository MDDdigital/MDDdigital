import 'dart:ui';

import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class PageEdu extends StatelessWidget {
  const PageEdu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('PARCOURS ACADEMIQUE'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          EduWidget(),
        ],
      ),
    );
  }
}

Widget EduWidget() => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            '',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          // const SizedBox(height: 5),
          Text(
            'BACCALAUREAT',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            ' 2015 - 2016   LYCEE DE PIKINE',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            '1er ANNEE PHYSIQUE CHIMIE  ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            '2016 - 2017   UCAD',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            '2éme ANNEE PHYSIQUE CHIMIE ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            '2017 - 2018   UCAD',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            'LICENCE PHYSIQUE CHIMIE ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            '2018 - 2019   UCAD',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            '1er ANNE EN INFORMATIQUE ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            '2019 - 2020   IPD THOMAS SANKARA',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            '2eme ANNEE INFORMATIQUE ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            '2020 - 2021   ESMS',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            '3eme ANNEE INFORMATIQUE ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            '2021 - 2022   ESMS',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            'FORMATION EN COM DIGITAL ET GRAPHISME ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            'MAI - JUILLET 2022   MVP',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            'CERTIFICATION DEV MOBILE FLUTTER ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
          Text(
            'AOUT 2022 ENCOURS XARALA',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            '  ',
            style: TextStyle(fontSize: 20, height: 2),
          ),
        ],
      ),
    );
