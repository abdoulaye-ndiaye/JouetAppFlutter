// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
// my own imports
import 'package:jouetapp/componets/cart_products.dart';
import 'package:jouetapp/pages/livraison.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromARGB(255, 162, 28, 64),
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Text('Panier'),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: const Text('Total:'),
                subtitle: const Text('\$295'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryPage()));
                },
                child: const Text(
                  'Commander',
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