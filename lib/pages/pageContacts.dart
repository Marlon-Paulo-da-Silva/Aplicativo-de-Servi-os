import 'package:flutter/material.dart';
import 'package:projetinhoflutterhttp/components/input_search.dart';

class PageContacts extends StatefulWidget {
  @override
  _PageContactsState createState() => _PageContactsState();
}

class _PageContactsState extends State<PageContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  AssetImage("images/perfil-marlon.jpg"),
                            ),
                          ),
                          Positioned(
                            right: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Text(
                                  '+9',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Mensagens',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.indigo[800]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          color: Colors.indigo[800],
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InputSearch(inputHintText: 'Pesquise uma mensagem?'),
          ],
        ),
      ),
    );
  }
}
