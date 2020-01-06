import 'package:flutter/material.dart';

import 'package:projetinhoflutterhttp/components/horizontal_listview.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 175.0,
                    width: double.infinity,
                    color: Colors.indigo[800],
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(190),
                        color: Colors.indigo[500].withOpacity(0.8),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Colors.indigo[400].withOpacity(0.5),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              image: DecorationImage(
                                image: AssetImage('images/perfil-marlon.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 120.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Olá , Marlon',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Como podemos te ajudar hoje?',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
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
                              hintText: 'Encontre o que precisa',
                              hintStyle: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: 'Quicksand'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  HorizontalList(),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cupons e Ofertas',
                  style: TextStyle(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  HorizontalList(),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Serviços Recomendados'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  HorizontalList(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
