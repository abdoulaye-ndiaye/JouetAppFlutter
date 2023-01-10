// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
// My own imports
import 'package:jouetapp/componets/horizontal_listview.dart';
import 'package:jouetapp/componets/products.dart';
import 'package:jouetapp/pages/cart.dart';
import 'package:jouetapp/pages/compte.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Widget imageCarousel = SizedBox(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: const [
          AssetImage('images/produits/image1.jpeg'),
          AssetImage('images/produits/image2.jpeg'),
          AssetImage('images/produits/image3.jpeg'),
          AssetImage('images/produits/image4.jpeg'),
          AssetImage('images/produits/image5.jpeg'),
          AssetImage('images/produits/image6.jpeg'),
          AssetImage('images/produits/image7.jpeg'),
          AssetImage('images/produits/image12.jpeg'),
          AssetImage('images/produits/image21.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: const Color.fromARGB(255, 162, 28, 64),
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromARGB(255, 162, 28, 64),
        title: const Text('Boutique de Jouet'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
            },
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Abdoulaye ndiaye'),
          accountEmail: Text('Abdoualaye3.ndiaye@uadb.edu.sn'),
          currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              )
              ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 162, 28, 64),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: ListTile(
            title: Text("Page d'accueil"),
            leading: Icon(
              Icons.home,
              color: const Color.fromARGB(255, 162, 28, 64),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MonComptePage()));
          },
          child: ListTile(
            title: Text('Mon compte'),
            leading: Icon(
              Icons.person,
              color: const Color.fromARGB(255, 162, 28, 64),
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Mes commandes'),
            leading: Icon(
              Icons.shopping_basket,
              color: const Color.fromARGB(255, 162, 28, 64),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
          },
          child: ListTile(
            title: Text('Panier'),
            leading: Icon(
              Icons.shopping_cart,
              color: const Color.fromARGB(255, 162, 28, 64),
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Favoris'),
            leading: Icon(
              Icons.favorite,
              color: const Color.fromARGB(255, 162, 28, 64),
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('réglages'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('À propos'),
            leading: Icon(
              Icons.help,
              color: Colors.green,
            ),
          ),
        ),
      ])),
      body: ListView(children: <Widget>[
        //imageCarousel begins
        imageCarousel,
        // padding widget
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Catégories'),
        ),
        //horizontal liste views
        const HorizontaList(),
        // padding widget
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Récents produits'),
        ),
        //grid view
        SizedBox(
          height: 320.0,
          child: const Products(),
        )
      ]),
    );
  }
}
