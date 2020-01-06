import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:projetinhoflutterhttp/pages/flutterPages.dart';
import 'package:projetinhoflutterhttp/pages/pageHome.dart';
import 'package:projetinhoflutterhttp/pages/pageMessage.dart';
import 'package:projetinhoflutterhttp/pages/pageProfile.dart';
import 'package:projetinhoflutterhttp/pages/pageSearch.dart';
import 'package:projetinhoflutterhttp/pages/pageOffer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final PagesFlutter _pages = PagesFlutter();
  final PageProfile _profile = PageProfile();
  final PageHome _home = PageHome();
  final PageMessage _messages = PageMessage();
  final PageOffer _offer = PageOffer();
  final PageSearch _search = PageSearch();

  Widget _showPage = new PagesFlutter();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _home;
        break;
      case 1:
        return _search;
        break;
      case 2:
        return _messages;
        break;
      case 3:
        return _profile;
        break;
      case 4:
        return _offer;
        break;
      default:
        return new Container(
          child: Text(
            'Nao foi selecionado nenhuma pagina',
            style: TextStyle(fontSize: 30),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.indigo[800],
        color: Colors.indigo[800],
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.message,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.perm_identity,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.local_offer,
            size: 20,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(milliseconds: 200),
        index: pageIndex,
        onTap: (index) {
          debugPrint('botao $index');
          setState(() {
            _showPage = _pageChooser(index);
          });
          //Handle button tap
        },
      ),
    );
  }
}
