import 'package:flutter/material.dart';

import 'dart:math';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          )

        ],
      ),

      bottomNavigationBar: _bottonNavigationBar(context)
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.6),
          colors: [
            Color.fromRGBO(252, 252, 252, 1.0),
            Color.fromRGBO(251, 251, 252, 1.0),
          ]
        )
      ),
    );

    final cajaVerde = Transform.rotate(
      angle: -pi / 5.0 ,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          
          color: Color.fromRGBO(66, 145, 104, 1.0)
        ),
      ),
    );


    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaVerde
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'STARBUCKS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 10.0),
            Text(
              'Las mejores bebids al 50 % de descuento.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )
            )
          ],
        ),
      ),
    );
  }
  
  Widget _bottonNavigationBar(BuildContext context) {
    
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(251, 251, 252, 1.0),
        primaryColor: Color.fromRGBO(48, 163, 43, 1.0),
        textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(85, 85, 85, 1.0)))
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.markunread, size: 30.0),
            title: Container()
          ),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/cafe-frappuccino-blended_tcm92-18636_w1024_n.png','Nuevo'),
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/cappucino-espresso_tcm92-18666_w1024_n.png','Nuevo 1'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/mocha-frappuccino-blended_tcm92-18625_w1024_n.png','Nuevo 2'),
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/fresa-frappuccino-blended_tcm92-18638_w1024_n.png','Nuevo 3'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/vainilla-creme-frappuccino-blended_tcm92-18639_w1024_n.png','Nuevo 4'),
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/mocha-blanco-creme-frappuccino-blended_tcm92-18633_w1024_n.png','Nuevo 5'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/chocolate-caliente-espresso_tcm92-18657_w1024_n.png','Nuevo 6'),
            _crearBotonRedondeado(Color.fromRGBO(112, 112, 112, 1.0), 'https://www.starbucks.com.pe/media/espresso-frappuccino-blended_tcm92-11341_w1024_n.png','Nuevo 7'),
          ]
        )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, String img, String texto) {
    
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
            radius: 50.0,
            child: Image(
              image: NetworkImage(img),
              width: 150.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            texto,
            style: TextStyle(
              color: color
            )
          ),
          SizedBox(height: 5.0)
        ],
      ),
    );
  }

}