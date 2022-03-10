import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class TorneoScreen extends StatefulWidget {
  const TorneoScreen({Key? key}) : super(key: key);

  @override
  State<TorneoScreen> createState() => _TorneoScreen();
}

class _TorneoScreen extends State<TorneoScreen> {
  int home = 1;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Torneos'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey.shade900,
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Buscar tus torneos',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: home,
          onTap: (index) {
            setState(() {
              if (home == index) {
                Navigator.pushReplacementNamed(context, AppRoutes.optionsRoute);
              } else {
                Navigator.pushReplacementNamed(context, AppRoutes.initialRoute);
              }
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil")
          ],
        ));
  }
}
