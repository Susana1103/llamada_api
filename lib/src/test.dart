import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'practica',
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Anime'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Alertas',
              onPressed: () {
                print('Botón de alerta presionado');
              }),
          IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Correo',
              onPressed: () {
                print('Botón de correo presionado');
              })
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Menú Seleccionado');
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        'Catalogo de mangas',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Box SeT Sailon Moon',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Costo MXN 1070',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all()),
                      width: 270.0,
                      height: 160.0,
                      child: Center(
                        child: Image.network(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Box Set Tokyo Ghoul',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Costo MXN 900',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all()),
                      width: 270.0,
                      height: 190.0,
                      child: Center(
                        child: Image.network(
                            'data:image/jpeg;base64,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'),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'costo de Envio Icluido',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.my_library_books_outlined,
                              size: 40.0, color: Colors.pinkAccent),

                          /*Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.account_circle, size: 60.0, color: Colors.green),
                  ),*/
                          Expanded(
                            child: Icon(Icons.search,
                                size: 40.0, color: Colors.black),
                            /*child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.airplay, size: 60.0, color: Colors.green),
                  )*/
                          ),
                          Expanded(
                            child: Icon(Icons.home,
                                size: 40.0, color: Colors.yellow),
                            /*child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.airplay, size: 60.0, color: Colors.green),
                  )*/
                          ),
                          Icon(Icons.add_shopping_cart_rounded,
                              size: 40.0, color: Colors.greenAccent),
                          /*Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child:
                        Icon(Icons.computer, size: 60.0, color: Colors.green),
                  ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.greenAccent,

      //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Bóton presionado');
        },
      ),*/
    );
  }
}
