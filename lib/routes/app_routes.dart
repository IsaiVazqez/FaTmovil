import 'package:finding_a_tour/screens/profile2_page.dart';
import 'package:finding_a_tour/screens/services_screen.dart';
import 'package:finding_a_tour/screens/torneos_screen.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/models/item_menu.dart';
import 'package:finding_a_tour/screens/screens.dart';
import '../screens/home_screen2.dart';
import '../screens/profile_page.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static const String servicesRoute = 'serv';
  static const String optionsRoute = 'opr';
  static const String tornRoute = 'tRo';
  static const String basicl = 'bl';
  static const String profileRoute = 'prof';
  static const String profileRoute2 = 'prof2';
  static const String initialRoute2 = 'home2';
  static const String servicesRoute2 = 'serv2';
  static const String tornRoute2 = 'tRo2';

  static final menuOptions = <ItemMenu>[
    ItemMenu(
        label: 'Home Screen', route: initialRoute, screen: const HomeScreen()),
    ItemMenu(
        label: 'Services',
        route: servicesRoute,
        screen: const ServicesScreen()),
    ItemMenu(
        label: 'perfil', route: optionsRoute, screen: const TorneoScreen()),
    ItemMenu(label: 'Perfil', route: profileRoute, screen: const ProfilePage()),
    ItemMenu(
        label: 'Segundo Perfil',
        route: profileRoute2,
        screen: const ProfilePageDos()),
    ItemMenu(
        label: 'Segundo Home',
        route: initialRoute2,
        screen: const HomeScreenDos()),
    ItemMenu(
        label: 'Home Screen',
        route: servicesRoute2,
        screen: const HomeScreen()),
    ItemMenu(
        label: 'Home Screen', route: tornRoute2, screen: const HomeScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final item in menuOptions) {
      appRoutes.addAll({item.route: (BuildContext context) => item.screen});
    }
    return appRoutes;
  }
}
