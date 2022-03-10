import 'package:finding_a_tour/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:finding_a_tour/screens/home_screen.dart';

class RegisterCiud extends StatefulWidget {
  RegisterCiud({Key? key}) : super(key: key);

  @override
  _RegisterCiudState createState() => _RegisterCiudState();
}

class _RegisterCiudState extends State<RegisterCiud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Ciudadano'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                'images/logogiff.gif',
                height: 280.0,
              ),
            ),
            _userNameField(),
            SizedBox(
              height: 5.0,
            ),
            _userCorreField(),
            SizedBox(
              height: 5,
            ),
            _passwordTextField(),
            SizedBox(
              height: 20,
            ),
            _buttonRegist(),
          ],
        ),
      ),
    );
  }

  Widget _userNameField() {
    {
      return StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
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

  Widget _userCorreField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
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
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _buttonRegist() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 85.0, vertical: 14.0),
            child: Text(
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
          color: Colors.grey[850],
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          });
    });
  }
}
