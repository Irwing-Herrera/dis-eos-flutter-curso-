import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina_1(),
          _pagina_2()
        ],
      )
    );
  }

  Widget _pagina_1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _creartextos()
      ],
    );
  }

  Widget _pagina_2() {
    return Container(
      width: double.infinity,
      height:  double.infinity,
      color: Color.fromRGBO(80, 194, 221, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          ),
          onPressed: () {},
          ),
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height:  double.infinity,
      color: Color.fromRGBO(80, 194, 221, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height:  double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      )
    ); 
  }

  Widget _creartextos() {

    final estiloTexto = TextStyle(
      color: Colors.white,
      fontSize: 50.0
    );

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            '11°',
            style: estiloTexto,
          ),
          Text(
            'Jueves',
            style: estiloTexto,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 70.0,
          )
        ],
      ),
    );
  }
}