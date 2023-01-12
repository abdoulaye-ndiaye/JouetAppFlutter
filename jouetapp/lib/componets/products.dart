// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:jouetapp/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductsState createState() => _ProductsState();

}
class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name": "Voiture",
      "picture": "images/images2.jpeg",
      "old_price": 12000,
      "price": 8500,
    },
    {
      "name": "Pistolet",
      "picture": "images/images4.jpeg",
      "old_price": 150000,
      "price": 10500,
    },
    {
      "name": "Ball",
      "picture": "images/images8.jpeg",
      "old_price": 12500,
      "price": 8500,
    },
    {
      "name": "Piano",
      "picture": "images/images12.jpeg",
      "old_price": 22000,
      "price": 18500,
    },
    {
      "name": "Roller",
      "picture": "images/images20.jpeg",
      "old_price": 225000,
      "price": 1500,
    },
    {
      "name": "jouer 6",
      "picture": "images/images21.jpeg",
      "old_price": 21250,
      "price": 14500,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}


class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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
                  child:  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(prod_name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      Text("$prod_price Fr", style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
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
