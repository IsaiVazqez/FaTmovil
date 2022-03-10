import 'package:finding_a_tour/routes/app_routes.dart';
import 'package:finding_a_tour/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:provider/provider.dart';

import '../theme_model.dart';
import '../themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int home = 0;
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
          appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(22))),
            /* automaticallyImplyLeading: false, */
            title: const Center(child: Text('Finding A Tournament')),
            centerTitle: false,
            titleTextStyle: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontFamily: 'SFPRODISPLAY'),
            elevation: 5,
            actions: [
              IconButton(
                  icon: Icon(themeNotifier.isDark
                      ? Icons.nightlight_round
                      : Icons.wb_sunny),
                  onPressed: () {
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                    print("Theme change clicked");
                  })
            ],
          ),
          body: SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(
                8.0,
              ),
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    'Servicios',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'SFPRODISPLAY'),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[1].route);
                  },
                  child: const card1(),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  'Torneos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'SFPRODISPLAY'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, menuOptions[2].route);
                  },
                  child: const card2(),
                ),
              ],
            ),
          ),
          bottomNavigationBar: SnakeNavigationBar.color(
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: SnakeShape.circle,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 5,
            padding: const EdgeInsets.all(20),

            ///configuration for SnakeNavigationBar.color
            snakeViewColor: Color.fromARGB(255, 81, 204, 177),
            selectedItemColor:
                SnakeShape.circle == SnakeShape.indicator ? Colors.black : null,
            unselectedItemColor: Colors.blueGrey,

            ///configuration for SnakeNavigationBar.gradient
            //snakeViewGradient: selectedGradient,
            //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
            //unselectedItemGradient: unselectedGradient,

            showUnselectedLabels: false,
            showSelectedLabels: false,

            currentIndex: home,
            onTap: (index) => setState(() => home = index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'profile')
            ],
          ));
    });
  }
}

class card1 extends StatelessWidget {
  const card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.black,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/BalonB.png'),
                alignment: Alignment.topRight,
                scale: 4,
                opacity: 40),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 50, 107, 156),
                Color.fromARGB(255, 66, 226, 186)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          width: 200,
          height: 175,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Text(
                    'Gestiona tus Servicios',
                    textAlign: TextAlign.left,
                    textWidthBasis: TextWidthBasis.parent,
                    maxLines: 3,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'SFPRODISPLAY',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class card2 extends StatelessWidget {
  const card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.black,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/trofB.png'),
                alignment: Alignment.topRight,
                scale: 4,
                opacity: 50),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 62, 23, 235),
                Color.fromARGB(255, 145, 36, 246)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          width: 200,
          height: 175,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Text(
                    'Gestiona tus Torneos',
                    textAlign: TextAlign.start,
                    textWidthBasis: TextWidthBasis.parent,
                    maxLines: 3,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'SFPRODISPLAY',
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
