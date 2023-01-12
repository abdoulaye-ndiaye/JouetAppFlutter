import 'package:flutter/material.dart';

class HorizontaList extends StatelessWidget {
  const HorizontaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/images22.jpeg',
            imageCaption: 'Velo',
          ),
          Category(
            imageLocation: 'images/images23.jpeg',
            imageCaption: 'Play',
          ),
          Category(
            imageLocation: 'images/images19.jpeg',
            imageCaption: 'Rebot',
          ),
        ],
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  // ignore: prefer_const_constructors_in_immutables
  Category({Key? key, required this.imageLocation, required this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: null,
        child: SizedBox(
          width: 120.0,
          child: ListTile(
            title: Image.asset(imageLocation, width: 120.0, height: 90.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption,style: const TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}
