// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:jouetapp/pages/login.dart';

class MonComptePage extends StatefulWidget {
  const MonComptePage({Key? key}) : super(key: key);

  @override
  _MonComptePageState createState() => _MonComptePageState();
}

class _MonComptePageState extends State<MonComptePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon compte'),
        backgroundColor: const Color.fromARGB(255, 162, 28, 64),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.asset('images/produits/noel1.jpeg', fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: Image.asset('images/produits/personne.jpeg', fit: BoxFit.cover,),
            ),
            const Text(
              'Abdoulaye Ndiaye',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'abdoulaye3.ndiaye@uadb.edu.sn',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '+221 77 554 76 58',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                // Déconnectez l'utilisateur et naviguez vers la page de connexion
                Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
              },
                child: const Text(
                  'Deconnexion',
                  style: TextStyle(color: Colors.white),
                ),
                color: const Color.fromARGB(255, 162, 28, 64),
              ),
            ),
          ],
        ),
      ),
    );
  }
}