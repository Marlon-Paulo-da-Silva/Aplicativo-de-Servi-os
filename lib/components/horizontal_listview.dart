import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Estético',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Reforma',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'A/C',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Elétricos',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Informatica',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Móveis',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Hidraulicos',
            ),
            Category(
              imagelocation: 'images/brush.png',
              imagecaption: 'Limpeza',
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
            width: 120.0,
            child: Card(
              elevation: 4.0,
              child: ListTile(
                title: Image.asset(
                  imagelocation,
                  width: 60.0,
                  height: 80.0,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: <Widget>[
                      Text(imagecaption),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
