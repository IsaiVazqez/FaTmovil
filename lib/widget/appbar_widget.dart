import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))),
    automaticallyImplyLeading: false,
    title: const Center(child: Text('Perfil')),
    elevation: 0,
    titleTextStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
        fontFamily: 'SFPRODISPLAY'),
    actions: [
/*       IconButton(
        icon: Icon(icon),
        color: Colors.white,
        onPressed: () {},
      ) */
    ],
  );
}
