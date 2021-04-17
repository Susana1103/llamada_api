import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _opcion1;
  String _opcion2;
  String _opcion3;
  String _opcion4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipo de botones '),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () => {
                        setState(() {
                          _opcion1 = 'presiono  RaisedButton';
                        }),
                      },
                  child: Text('RaisedButton')),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              child: FlatButton(
                child: Text('FlatButton'),
                onPressed: () => {
                  setState(() {
                    _opcion2 = 'presiono FlatButton';
                  }),
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => {
                  setState(() {
                    _opcion3 = 'presiono IconButton';
                  }),
                },
                color: Colors.blue,
                iconSize: 45.0,
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              width: 250.0,
              height: 50.0,
              child: OutlineButton(
                color: Colors.blue,
                child: Text('OutlineButton'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () => {
                  setState(() {
                    _opcion4 = 'presiono  OutlineButton';
                  }),
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300,
              child: Text('Mensaje: $_opcion1'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300,
              child: Text('Mensaje: $_opcion2'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300,
              child: Text('Mensaje: $_opcion3'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 300,
              child: Text('Mensaje: $_opcion4'),
            ),
          ],
        ),
      ),
    );
  }
}
