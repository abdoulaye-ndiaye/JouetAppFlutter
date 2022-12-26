import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

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
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: const Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.redAccent,
      indicatorBgPadding: 2.0,
    ),
  );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: const Text('Boutique de Jouet'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(children: const <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Abdoulaye ndiaye'),
          accountEmail: Text('Abdoualaye.ndiaye@gmail.com'),
          currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              )),
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text("Page d'accueil"),
            leading: Icon(
              Icons.home,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Mon compte'),
            leading: Icon(
              Icons.person,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Mes commandes'),
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Catégories'),
            leading: Icon(
              Icons.dashboard,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Favoris'),
            leading: Icon(
              Icons.favorite,
              color: Colors.redAccent,
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
          
      ]
      )
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
        ]
      ),
    );
  }
}
