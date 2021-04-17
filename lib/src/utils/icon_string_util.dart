import 'package:flutter/material.dart';

final _iconos = <String, IconData>{
  'map': Icons.map,
  'account_balance_wallet': Icons.account_balance_wallet,
  'photo_album': Icons.photo_album,
  'audiotrack': Icons.audiotrack,
  'add_location': Icons.add_location
};

Icon obtenerIcono(String nombreIcono) {
  return Icon(
    _iconos[nombreIcono],
    color: Colors.blue,
    size: 35,
  );
}
