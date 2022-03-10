import 'package:finding_a_tour/screens/services_screen.dart';
import 'package:finding_a_tour/screens/torneos_screen.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/models/item_menu.dart';
import 'package:finding_a_tour/screens/screens.dart';
import '../screens/profile_page.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static const String servicesRoute = 'serv';
  static const String optionsRoute = 'opr';
  static const String tornRoute = 'tRo';
  static const String basicl = 'bl';
  static const String profileRoute = 'prof';

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
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final item in menuOptions) {
      appRoutes.addAll({item.route: (BuildContext context) => item.screen});
    }
    return appRoutes;
  }
}
