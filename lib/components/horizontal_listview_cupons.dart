import 'package:flutter/material.dart';

class HorizontalListviewCupons extends StatefulWidget {
  @override
  _HorizontalListviewCuponsState createState() =>
      _HorizontalListviewCuponsState();
}

class _HorizontalListviewCuponsState extends State<HorizontalListviewCupons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Cupon(
            cuponTitle: 'titulo cupon',
            cuponSubtitle: 'subtitulo cupon',
          ),
          Cupon(
            cuponTitle: 'titulo cupon',
            cuponSubtitle: 'subtitulo cupon',
          ),
          Cupon(
            cuponTitle: 'titulo cupon',
            cuponSubtitle: 'subtitulo cupon',
          ),
          Cupon(
            cuponTitle: 'titulo cupon',
            cuponSubtitle: 'subtitulo cupon',
          ),
        ],
      ),
    );
  }
}

class Cupon extends StatelessWidget {
  final String cuponTitle;
  final String cuponSubtitle;
  final String cuponLeading;
  final String cuponTrailing;

  const Cupon(
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
                title: Text('15% Cabeleireiro'),
                subtitle: Text('Só nesse fim de semanda o corte sai por 10,00'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
