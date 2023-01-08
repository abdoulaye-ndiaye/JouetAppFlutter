// ignore_for_file: camel_case_types, deprecated_member_use, unused_field

import 'package:flutter/material.dart';
import 'package:jouetapp/pages/home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connexion"),
        backgroundColor: const Color.fromARGB(255, 162, 28, 64),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('images/produits/noel1.jpeg'), width: 300.0, height: 300.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Adresse email',
                        labelStyle: TextStyle(color: Color.fromARGB(255, 162, 28, 64)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer une adresse email valide';
                        }
                        return null;
                      },
                      onSaved: (value) => _email = value!,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Mot de passe',
                        labelStyle: TextStyle(color: Color.fromARGB(255, 162, 28, 64)),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer un mot de passe';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value!,
                    ),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    RaisedButton(
                      color: const Color.fromARGB(255, 162, 28, 64),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                          // Appeler l'API de connexion ici avec _email et _password
                        }
                      },
                      child: const Text('Se connecter', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}