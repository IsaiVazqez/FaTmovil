import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finding_a_tour/routes/app_routes.dart';
import 'package:finding_a_tour/screens/login.dart';
import 'package:finding_a_tour/theme_model.dart';
import 'package:finding_a_tour/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer<ThemeModel>(
            builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            theme: themeNotifier.isDark
                ? ThemeData.dark().copyWith(
                    appBarTheme: const AppBarTheme(
                        centerTitle: true,
                        foregroundColor: Color.fromARGB(221, 19, 13, 13)),
                    scaffoldBackgroundColor: Colors.black87)
                : ThemeData.light().copyWith(
                    appBarTheme: const AppBarTheme(
                        centerTitle: true,
                        backgroundColor: Color.fromARGB(255, 107, 219, 163)),
                    scaffoldBackgroundColor: Colors.white),
            home: const SplashScreen(),
            routes: AppRoutes
                .getRoutes(), /*       initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(), */
          );
          dividerColor:
          Colors.black;
        }));
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "images/logo.png",
      backgroundColor: Colors.black,
      nextScreen: Login(),
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.decoratedBoxTransition,
    );
  }
}
