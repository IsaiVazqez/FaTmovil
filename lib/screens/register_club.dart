import 'package:flutter/material.dart';
import 'package:finding_a_tour/screens/home_screen.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))),
        /* automaticallyImplyLeading: false, */
        title: const Text('Registrar'),
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
              _userNameeField(),
              const SizedBox(
                height: 10,
              ),
              _userTextField(),
              const SizedBox(
                height: 10,
              ),
              _passwordTextField(),
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

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
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
          color: Color.fromARGB(255, 1, 36, 235),
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
          decoration: const InputDecoration(
            icon: Icon(Icons.groups),
            hintText: 'Cruz Azul',
            labelText: 'Nombre del Club',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _userNameeField() {
    {
      return StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              icon: Icon(Icons.account_circle),
              hintText: 'Isai Vazquez',
              labelText: 'Nombre y Apellido',
            ),
            onChanged: (value) {},
          ),
        );
      });
    }
  }

  Widget _direccTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.add_location_alt_rounded),
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
          decoration: const InputDecoration(
            icon: Icon(Icons.contact_phone),
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
          decoration: const InputDecoration(
            icon: Icon(Icons.event_sharp),
            hintText: 'Lunes A Viernes de 5 a 9 pm',
            labelText: 'Horario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }
}
