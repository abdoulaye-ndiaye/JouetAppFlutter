// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart=[
    {
      "name": "Voiture",
      "picture": "images/images1.jpeg",
      "price": 18500,
      "size": "M",
      "color": "Red",
      "quantity": 2,
    },
    {
      "name": "Pistolet",
      "picture": "images/images6.jpeg",
      "price": 8000,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Maison poupée",
      "picture": "images/images14.jpeg",
      "price": 12500,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (BuildContext context, int index) {
        return Single_cart_product(
          cart_name: Products_on_the_cart[index]['name'],
          cart_picture: Products_on_the_cart[index]['picture'],
          cart_price: Products_on_the_cart[index]['price'],
          cart_size: Products_on_the_cart[index]['size'],
          cart_color: Products_on_the_cart[index]['color'],
          cart_qty: Products_on_the_cart[index]['quantity'],
        );
      },
    );
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_name;
  final cart_picture;
  final cart_price;
  final cart_size;
  final cart_color;
  final cart_qty;

  Single_cart_product({
    this.cart_name,
    this.cart_picture,
    this.cart_price,
    this.cart_size,
    this.cart_color,
    this.cart_qty,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Title(color: Colors.black, child: Text(cart_name)),
        leading: Image.asset(cart_picture, width: 80.0, height: 80.0),
        subtitle: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Taille:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_size, style: const TextStyle(color: Color.fromARGB(255, 162, 28, 64))),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Couleur:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_color, style: const TextStyle(color:Color.fromARGB(255, 162, 28, 64))),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("$cart_price Fr", style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 162, 28, 64))),
            ),
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_drop_up),
                onPressed: () {},
              ),
              Text("$cart_qty"),
              IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}