import 'package:flutter/material.dart';
import 'package:aplicacion1/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  /*
  final nombres = [
    'Juan'
        'itachi'
        'Maria'
        'Victor'
        'Hurtado'
        'Madara'
        'Luisa'
  ];
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
      ),
      home: HomePage(),
    );
  }
}
/*
List<Widget> _crearItems() {
  List<Widget> lista = new List<Widget>();

  for (var opt in nombres) {
    final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Esto es un subtitulo'),
        leading: Icon(
          Icons.home_outlined,
          size: 35,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
        onTap: () {});
    lista.add(tempWidget);
    lista.add(Divider());
  }
  return lista;
}
*/
