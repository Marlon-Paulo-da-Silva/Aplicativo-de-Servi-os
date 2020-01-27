import 'package:flutter/material.dart';

class HorizontalListviewRecomended extends StatefulWidget {
  @override
  _HorizontalListviewRecomendedState createState() =>
      _HorizontalListviewRecomendedState();
}

class _HorizontalListviewRecomendedState
    extends State<HorizontalListviewRecomended> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Recomended(
              cuponTitle: 'titulo cupon',
              cuponSubtitle: 'subtitulo cupon',
            ),
            Recomended(
              cuponTitle: 'titulo cupon',
              cuponSubtitle: 'subtitulo cupon',
            ),
            Recomended(
              cuponTitle: 'titulo cupon',
              cuponSubtitle: 'subtitulo cupon',
            ),
            Recomended(
              cuponTitle: 'titulo cupon',
              cuponSubtitle: 'subtitulo cupon',
            ),
          ],
        ));
  }
}

class Recomended extends StatelessWidget {
  final String cuponTitle;
  final String cuponSubtitle;
  final String cuponLeading;
  final String cuponTrailing;

  const Recomended(
      {this.cuponTitle,
      this.cuponSubtitle,
      this.cuponLeading,
      this.cuponTrailing});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            height: 100.0,
            width: 220.0,
            child: Card(
              elevation: 4.0,
              child: ListTile(
                leading: FlutterLogo(size: 42.0),
                title: Text('15% na Pintura'),
                subtitle: Text(
                    'Só nesse fim de semanda a pintura com desconto de 15,00'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
