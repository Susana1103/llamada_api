import 'package:aplicacion1/src/providers/menu_providers.dart';
import 'package:aplicacion1/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de ListView'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    /* menuProvider.cargarDatos().then((opciones){
            print("Lista del Future");
            print(opciones);
        });*/

    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        //  print('Builder');
        // print(snapshot.data);

        return ListView(
          children: _listaItems(context, snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
          leading: obtenerIcono(opt['icono']),
          title: Text(opt['texto']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 35,
          ),
          onTap: () {
            Navigator.pushNamed(context, opt['rutas'], arguments: opt['rutas']);

            /*
               final route = MaterialPageRoute(
                 builder: (context){
                   return MapaPage();
                 }
               );
              
               Navigator.push(context, route);
               */
          });

      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;

    /* return [
            ListTile(
              leading: Icon(Icons.map, size: 35),
              title: Text('Lugares favoritos',
              style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.keyboard_arrow_right, size: 35),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_balance_wallet, size: 35),
              title: Text('Billetera',
              style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.keyboard_arrow_right, size: 35),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.photo_album, size: 35),
              title: Text('Galeria de fotos',
              style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.keyboard_arrow_right, size: 35),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.audiotrack, size: 35),
              title: Text('Podcast',
              style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.keyboard_arrow_right, size: 35),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add_location, size: 35),
              title: Text('Lugares por visitar',
              style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.keyboard_arrow_right, size: 35),
              onTap: (){},
            ),
            Divider()
          ];*/
  }
}
