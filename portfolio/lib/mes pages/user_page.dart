import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;
  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
    required String email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(name),
          centerTitle: true,
        ),
        body: Image.network(
          urlImage,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
}
