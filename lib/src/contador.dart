import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({Key key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;
  TextStyle estilosTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menú principal',
            onPressed: () => {},
          ),
          title: Text('Imágenes'),
          centerTitle: true,
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Alertas',
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Correo',
              onPressed: () => {},
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.asset('assets/images/img1.jpg'),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Haz presionado este número de veces', style: estilosTexto),
            SizedBox(
              height: 20,
            ),
            Text('$_contador', style: estilosTexto),
          ],
        ),
      ),
      floatingActionButton: _mostrarBotones(),
    );
  }

  Widget _mostrarBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _restaurarContador,
          child: Icon(Icons.exposure_zero),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: _incrementarContador,
          child: Icon(Icons.plus_one),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: _decrementarContador,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 7,
        ),
      ],
    );
  }

  void _incrementarContador() {
    setState(() => _contador++);
  }

  void _decrementarContador() {
    setState(() => _contador--);
  }

  void _restaurarContador() {
    setState(() => _contador = 0);
  }
}
