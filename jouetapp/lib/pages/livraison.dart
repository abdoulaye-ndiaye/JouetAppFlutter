// ignore_for_file: prefer_final_fields, deprecated_member_use, unnecessary_new, library_private_types_in_public_api, unused_import, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _zipCodeController = TextEditingController();
  // ignore: unused_field
  DateTime? _chosenDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromARGB(255, 162, 28, 64),
        title: const Text('Information sur la livraison'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nom'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "S'il vous plaît entrez votre nom";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(labelText: 'Adresse'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "S'il vous plaît entrez votre Adresse";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _cityController,
                  decoration: const InputDecoration(labelText: 'Ville'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "S'il vous plaît entrez votre ville";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _stateController,
                  decoration: const InputDecoration(labelText: 'pays'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "S'il vous plaît entrez votre pays";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _zipCodeController,
                  decoration: const InputDecoration(labelText: 'Code postal'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre code postal';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: _buildCountryDropDown(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: _buildDeliveryOptionButton(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: _buildDatePicker(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Save the delivery information
                        //...
                      }
                    },
                    color: const Color.fromARGB(255, 162, 28, 64),
                    child: const Text(
                      'Confirmer',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCountryDropDown() {
    return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: DropdownButton<String>(
          value: "Sénégal",
          items: const [
            DropdownMenuItem(value: "Sénégal", child: Text("Sénégal")),
            DropdownMenuItem(value: "Mali", child: Text("Mali")),
            DropdownMenuItem(value: "Overnight", child: Text("Overnight")),
          ],
          onChanged: (value) {
            print("You selected $value");
          },
        ));
  }

  Widget _buildDeliveryOptionButton() {
    return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: DropdownButton<String>(
          value: "Standard",
          items: const [
            DropdownMenuItem(value: "Standard", child: Text("Standard")),
            DropdownMenuItem(value: "Expedited", child: Text("Expedited")),
            DropdownMenuItem(value: "Gambie", child: Text("Gambie")),
          ],
          onChanged: (value) {
            print("You selected $value");
          },
        ));
  }

  Widget _buildDatePicker() {
    return SizedBox(
      height: 170,
      child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (val) {
            setState(() {
              _chosenDateTime = val;
            });
          }),
    );
  }
}
