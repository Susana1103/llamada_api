import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode correoFocus;
  FocusNode passwordFocus;

  String nombre;
  String correo;
  String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          foregroundColor: Colors.blueAccent,
          title: Text('Susana'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pagina para fans de One Piece',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 800.0,
                  height: 150.0,
                  child: Center(
                    child: Image.network(
                        'https://p4.wallpaperbetter.com/wallpaper/316/272/905/anime-one-piece-thousand-sunny-wallpaper-preview.jpg'),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Nombre Completo',
                      hintText: 'Ejemplo: Fulanito de la Rosa ',
                      prefixIcon: Icon(
                        Icons.person_pin_sharp,
                        color: Colors.tealAccent,
                      )),
                  //controller: nombreTextController,
                  onSaved: (value) {
                    nombre = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo sin llenar';
                    }
                  },
                  focusNode: this.nombreFocus,
                  onEditingComplete: () => requestFocus(context, correoFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 6.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Correo Electronico',
                      hintText: 'Ejemplo@example.com',
                      prefixIcon: Icon(
                        Icons.alternate_email_sharp,
                        color: Colors.pinkAccent,
                      )),
                  //controller: apTextController,
                  onSaved: (value) {
                    correo = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo sin llenar';
                    }
                  },
                  focusNode: this.passwordFocus,
                  onEditingComplete: () => requestFocus(context, correoFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 6.0,
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'numeros y letras',
                        prefixIcon: Icon(
                          Icons.screen_lock_landscape_sharp,
                          color: Colors.orangeAccent,
                        )),
                    //controller: apTextController,
                    onSaved: (value) {
                      password = value;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo sin llenar';
                      }
                    }),
                SizedBox(
                  height: 6.0,
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      if (nombre.compareTo('susana') == 0 &&
                          correo.compareTo('susanaga.ti19@utsjr.edu.com') ==
                              0 &&
                          password.compareTo('susy1103') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre,
                                correo: this.correo,
                                password: this.password));
                      } else {
                        print('Datos incorrectos');
                      }
                    }
                  },
                  child: Text(' Aceptar '),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
    nombreFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    nombreFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String correo;
  String password;

  Argumentos({this.nombre, this.correo, this.password});

  get apellido => null;

  get edad => null;
}
