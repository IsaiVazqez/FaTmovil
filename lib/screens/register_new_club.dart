import 'package:flutter/material.dart';
import 'package:finding_a_tour/screens/home_screen.dart';

class RegisterNew extends StatefulWidget {
  const RegisterNew({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))),
        /* automaticallyImplyLeading: false, */
        title: const Text('Registrar Nuevo Club'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontFamily: 'SFPRODISPLAY'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              _clubTextField(),
              const SizedBox(
                height: 10,
              ),
              _direccTextField(),
              const SizedBox(
                height: 10,
              ),
              _telefTextField(),
              const SizedBox(
                height: 10,
              ),
              _HorasTextField(),
              const SizedBox(
                height: 20,
              ),
              _bottonRegister(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottonRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 89.0, vertical: 15.0),
            child: const Text(
              'Registrarse',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 10.0,
          color: const Color.fromARGB(255, 66, 226, 186),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          });
    });
  }

  Widget _clubTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            icon: const Icon(Icons.groups),
            hintText: 'Cruz Azul',
            labelText: 'Nombre del nuevo Club',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _direccTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            icon: const Icon(Icons.add_location_alt_rounded),
            hintText: 'Calle 64 po 103...',
            labelText: 'Dirección',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _telefTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            icon: const Icon(Icons.contact_phone),
            hintText: '999292992',
            labelText: 'Teléfono',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _HorasTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            icon: const Icon(Icons.event_sharp),
            hintText: 'Lunes A Viernes de 5 a 9 pm',
            labelText: 'Horario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }
}
