import 'dart:ffi';

import 'package:flutter/material.dart';

class Cromo {

  String nombre;
  String descripcion;
  double latitud;
  double longitud;
  String creador;
  int numeroCromo;
  String rutaImg;
  int bus;

  Cromo({
    @required this.nombre,
    @required this.descripcion,
    @required this.latitud,
    @required this.longitud,
    @required this.creador,
    @required this.numeroCromo,
    @required this.rutaImg,
    @required this.bus
  });

}