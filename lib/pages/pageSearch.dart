import 'package:flutter/material.dart';

class PageSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      child: Text(
        'Pagina das pesquisas',
        textScaleFactor: 2.0,
=======
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
>>>>>>> messagePage
      ),
    );
  }
}
