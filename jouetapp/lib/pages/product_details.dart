// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

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
  // ignore: library_private_types_in_public_api
  _ProductDetailsState createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
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
            onPressed: () {},
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
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_old_price}",
                          style: const TextStyle(
                              color: Colors.grey, decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_new_price}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
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
          Row(
            children: <Widget>[
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
                                onPressed: (){
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
                                onPressed: (){
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
                                onPressed: (){
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

            ]  
          ),
              // ============== the
          // ============== the second buttons ==============
          Row(
            children: <Widget>[
              // ============== the size button ==============
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: const Text('Buy now'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                color: Colors.red,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text('Product details'),
            subtitle: Text("Ce jouet en bois est recommandé pour les enfants âgés de 3 à 6 ans. Il mesure 20 cm de haut et pèse environ 500 grammes. Sa couleur jaune vif et ses formes géométriques en font un jouet amusant et attractif. Le jouet est multifonctionnel, avec des éléments qui tournent, glissent et s'emboîtent. Il aide les enfants à développer leur motricité fine et leur pensée logique. Le jouet a été conçu avec des matériaux de qualité et respecte les normes de sécurité en vigueur. Veillez à utiliser le jouet sous la supervision d'un adulte."),
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
    ],
    ),
    );
  }
  
}