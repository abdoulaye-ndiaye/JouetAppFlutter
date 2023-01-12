// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jouetapp/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
          child: const Text('Boutique de Jouet'),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart()));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 300.0,
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.product_detail_old_price} Fr",
                          style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.product_detail_new_price} Fr",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 162, 28, 64)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
            ),
          ),
          // ============== the first buttons ==============
          Row(children: <Widget>[
            // ============== the size button ==============
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Size'),
                          content: const Text('Choose the size'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: const Text('close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Expanded(
                      child: Text('Size'),
                    ),
                    const Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ),
            // ============== the size button ==============
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('color'),
                          content: const Text('Choose the color'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: const Text('close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Expanded(
                      child: Text('Color'),
                    ),
                    const Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ),
            // ============== the size button ==============
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Quantity'),
                          content: const Text('Choose the Quantity'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: const Text('close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Expanded(
                      child: Text('Qty'),
                    ),
                    const Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          // ============== the
          // ============== the second buttons ==============
          Row(
            children: <Widget>[
              // ============== the size button ==============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Cart())));
                  },
                  color: const Color.fromARGB(255, 162, 28, 64),
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: const Text('Buy now'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                color: const Color.fromARGB(255, 162, 28, 64),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border),
                color: const Color.fromARGB(255, 162, 28, 64),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text('Product details'),
            subtitle: Text(
                "Ce jouet en bois est recommandé pour les enfants âgés de 3 à 6 ans. Il mesure 20 cm de haut et pèse environ 500 grammes. Sa couleur jaune vif et ses formes géométriques en font un jouet amusant et attractif. Le jouet est multifonctionnel, avec des éléments qui tournent, glissent et s'emboîtent. Il aide les enfants à développer leur motricité fine et leur pensée logique. Le jouet a été conçu avec des matériaux de qualité et respecte les normes de sécurité en vigueur. Veillez à utiliser le jouet sous la supervision d'un adulte."),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // remember to create the product brand
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Brand X'),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Similar products'),
          ),
          // similar products section
          SizedBox(
            height: 360.0,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "voiture",
      "picture": "images/image.jpeg",
      "old_price": 12050,
      "price": 8050,
    },
    {
      "name": "voiture",
      "picture": "images/images1.jpeg",
      "old_price": 15000,
      "price": 7500,
    },
    {
      "name": "voiture",
      "picture": "images/images3.jpeg",
      "old_price": 24000,
      "price": 9050,
    },
    {
      "name": "voiture",
      "picture": "images/images17.jpeg",
      "old_price": 17200,
      "price": 5300,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                // here we are passing the values of the product to the product details page
                builder: (context) => ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          prod_name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      Text(
                        "$prod_price Fr",
                        style: const TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
