import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Pintura',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Pintura',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Pintura',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Pintura',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Pintura',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Pintura',
            ),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({this.imagecaption, this.imagelocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imagelocation,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Text(imagecaption),
            ),
          ),
        ));
  }
}
