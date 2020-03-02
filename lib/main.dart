import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

// Widget para cear tarjetas con el título y el ícono.
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    final double tamanoIcono = 40.00;

    final TextStyle estiloTexto = new TextStyle (color: Colors.grey, fontSize: 20.00);

    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Cartas Ejemplo"),
          backgroundColor: Colors.deepPurple
      ),
      body: new Container(
          child:
          new Center(
            child: new Column(
              // La propiedad "crossAxisAlignment" sirve para alinear los elementos de mi Widget, y con la sentencia "CrossAxisAlignment.stretch" lo que hacemos es estirar los elementos
              crossAxisAlignment:
              CrossAxisAlignment.stretch,
              children: <Widget>[

                new MyCard(
                    title: new Text("Este es un icono de anuncio", style: estiloTexto),
                    icon: new Icon(
                        Icons.announcement,
                        size: tamanoIcono,
                        color: Colors.blue)),

                new MyCard(
                    title: new Text("Este icono es un infinito", style: estiloTexto),
                    icon: new Icon(
                        Icons.all_inclusive,
                        size: tamanoIcono,
                        color: Colors.pink)),

                new MyCard(
                    title: new Text("Este icono es un corzón", style: estiloTexto),
                    icon: new Icon(
                        Icons.favorite,
                        size: tamanoIcono,
                        color: Colors.red)),

                new MyCard(
                    title: new Text("Y este es una estrella", style: estiloTexto),
                    icon: new Icon(
                        Icons.grade,
                        size: tamanoIcono,
                        color: Colors.orange)),
              ]
              ,
            )
            ,
          )
      )
      ,
    );
  }
}


class MyCard extends StatelessWidget {
  // Declaro las variables de tipo Widget para saber, según el título que venga como parámetro, qué ícono debo mostrar.
  final Widget title, icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      // coloco on padding sólo en el fondo de mis elementos con la sentencia "EdgeInsets.only(bottom: 2.0)".
      padding: const EdgeInsets.only(bottom: 2.0),
      child: new Card(
          child: new Container(
            padding: const EdgeInsets.all(40.00),
            child: new Column(
              children: <Widget>[this.title, this.icon],
            ),
          )
      ),
    );
  }
}