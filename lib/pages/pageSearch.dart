import 'package:flutter/material.dart';
import 'package:projetinhoflutterhttp/components/input_search.dart';

class PageSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              child: InputSearch(inputHintText: 'O que você precisa?'),
            ),
          ),
        ],
      ),
    );
  }
}
