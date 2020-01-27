import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  final String inputHintText;

  const InputSearch({this.inputHintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(5.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.indigo[800],
              size: 30.0,
            ),
            // hintText: hintText,
            hintText: inputHintText,
            hintStyle:
                TextStyle(color: Colors.black45, fontFamily: 'Quicksand'),
          ),
        ),
      ),
    );
  }
}
