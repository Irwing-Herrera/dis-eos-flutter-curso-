import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  final estiloSubTitulo = TextStyle(
    fontSize: 18.0,
    color: Colors.grey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          
            _crearImagen(),
            _crearPrimerContenedor(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
          
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://as.com/meristation/imagenes/2018/09/05/noticias/1536149358_958585_1536149881_noticia_normal.jpg'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearPrimerContenedor() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Boku no Hero',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Izuku Midoriya es muy diligente y de carácter fuerte.',
                    overflow: TextOverflow.ellipsis,
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 30.0,
            ),
            Text(
              '90',
              style: TextStyle(
                fontSize: 20.0
              ))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion('https://image.flaticon.com/icons/png/512/97/97302.png','Poder'),
        _accion('https://icon-library.net/images/icon-run/icon-run-3.jpg','Velocidad'),
        _accion('https://image.flaticon.com/icons/png/512/107/107788.png','Inteligencia'),

      ],
    );
  }

  Widget _accion(String imagen, String texto) {
    return  Column(
      children: <Widget>[
        Image(
          image: NetworkImage(imagen),
          height: 40.0,
          width: 40.0,
        ),
        SizedBox(height: 15.0),
        Text(
          texto,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0
          )
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Izuku es un joven educado y tranquilo. Además de esto, cuando era más pequeño solía ser muy tímido debido al hecho de ser acosado constantemente desde la infancia por el hecho de haber nacido sin un Don, especialmente en frente de Katsuki Bakugo. Inicialmente se lo muestra como una persona insegura, reservada y poco expresiva. Sin embargo, después de haber sido aceptado en la Academia U.A. y de enfrentar a Bakugo durante el entrenamiento de combate, se ha vuelto más confiado de sí mismo y valiente, al punto de desarrollar habilidades para el liderazgo.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}