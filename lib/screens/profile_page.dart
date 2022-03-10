import 'package:finding_a_tour/models/user.dart';
import 'package:finding_a_tour/screens/edit_profile_page.dart';
import 'package:finding_a_tour/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/routes/app_routes.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import '../routes/app_routes.dart';
import '../utils/user_preferences.dart';
import '../widget/appbar_widget.dart';
import '../widget/button_widget.dart';
import '../widget/numbers_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int home = 1;

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    final user = UserPreferences.myUser;

    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 10),
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            const SizedBox(height: 24),
            buildName(user),
/*             const SizedBox(height: 24),
            Center(child: buildUpgradeButton()), */
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 24),
            buildDirecc(user),
            const SizedBox(height: 24),
            buildHorario(user),
          ],
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
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
          ],
        ));
  }
}

Widget buildName(User user) => Column(
      children: [
        Text(
          user.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 10),
        Text(
          user.number,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );

Widget buildUpgradeButton() => ButtonWidget(
      text: 'Agregar Servicio',
      onClicked: () {},
    );

Widget buildDirecc(User user) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dirección',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            user.adress,
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );

Widget buildHorario(User user) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Horario',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            user.horarios,
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
