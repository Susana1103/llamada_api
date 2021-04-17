import 'package:flutter/material.dart';
import 'package:aplicacion1/src/pages/formulario_page.dart';

class SecondFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
            backgroundColor: Colors.pink, title: Text('Pagina de secundaria')),
        body: Column(
          children: <Widget>[
            Container(
              width: 800.0,
              height: 600.0,
              child: Center(
                child: Image.network(
                    'https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/mugiwara-jolly-roger-one-piece-alexia-chapuis.jpg'),
              ),
            ),
            Text(
              'Buenas tardes acabas de iniciar secion a la pagina de nakamas',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
