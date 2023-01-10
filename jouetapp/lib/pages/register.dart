// ignore_for_file: camel_case_types, unused_field

import 'package:flutter/material.dart';
import 'package:jouetapp/pages/home.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}
class _registerState extends State<register>{
  final _formKey = GlobalKey<FormState>();
  late String _nom, _prenom, _email, _password, _confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
        backgroundColor: const Color.fromARGB(255, 162, 28, 64),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage('images/produits/noel2.jpeg'), width: 200.0, height: 200.0),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Nom',
                          labelStyle: TextStyle(color: Color.fromARGB(255, 162, 28, 64)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez entrer votre nom';
                          }
                          return null;
                        },
                        onSaved: (value) => _nom = value!,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Prénom',
                          labelStyle: TextStyle(color: Color.fromARGB(255, 162, 28, 64)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez entrer votre prénom';
                          }
                          return null;
                        },
                        onSaved: (value) => _prenom = value!,
                      ),
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
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Confirmer le mot de passe',
                          labelStyle: TextStyle(color: Color.fromARGB(255, 162, 28, 64)),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez confirmer votre mot de passe';
                          }
                          return null;
                        },
                        onSaved: (value) => _confirmPassword = value!,
                      ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 162, 28, 64),
                        ),
                        child: const Text('S\'inscrire'),
                      ),
                    ],
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