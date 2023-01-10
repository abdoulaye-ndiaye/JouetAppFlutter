// ignore_for_file: prefer_final_fields, deprecated_member_use, unnecessary_new, library_private_types_in_public_api, unused_import

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
  late String _selectedCountry='';
  late String _selectedDeliveryOption='';
  late DateTime _selectedDate;
  List<String> _countries = ["United States", "Canada", "Mexico"];
  List<String> _deliveryOptions = ["Standard", "Expedited", "Overnight"];

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
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _cityController,
                  decoration: const InputDecoration(labelText: 'City'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your city';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _stateController,
                  decoration: const InputDecoration(labelText: 'State'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your state';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _zipCodeController,
                  decoration: const InputDecoration(labelText: 'Zip Code'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please entersure your zip code';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: ,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: _buildDeliveryOptionButton(),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
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
                    child: const Text('Save'),
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
        margin: const EdgeInsets.only(top: 16.0),
        child: DropdownButton<String>(
          value: _selectedCountry,
          onChanged: (newValue) {
            setState(() {
              _selectedCountry = newValue!;
            });
          },
          items: _countries.map((String country) {
            return new DropdownMenuItem<String>(
              value: country,
              child: new Text(country),
            );
          }).toList(),
        ));
  }

  Widget _buildDeliveryOptionButton() {
    return Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: DropdownButton<String>(
          value: _selectedDeliveryOption,
          onChanged: (newValue) {
            setState(() {
              _selectedDeliveryOption = newValue!;
            });
          },
          items: _deliveryOptions.map((String option) {
            return new DropdownMenuItem<String>(
              value: option,
              child: new Text(option),
            );
          }).toList(),
        ));
  }

  Widget _buildDatePicker() {
    return Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: CupertinoDatePicker(
          use24hFormat: true,
          initialDateTime: _selectedDate,
          onDateTimeChanged: (DateTime newDateTime) {
            setState(() {
              _selectedDate = newDateTime;
            });
          },
        ));
  }
}
