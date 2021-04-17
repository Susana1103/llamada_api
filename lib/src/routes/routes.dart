import 'package:aplicacion1/src/pages/api_page.dart';
import 'package:aplicacion1/src/pages/billetera_page.dart';
import 'package:aplicacion1/src/pages/formulario_page.dart';
import 'package:aplicacion1/src/pages/lugares_page.dart';
import 'package:aplicacion1/src/pages/mapa_page.dart';
import 'package:aplicacion1/src/pages/podcast_page.dart';
import 'package:aplicacion1/src/pages/secondFormPage_page.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => ApiPage(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
  };
}
