import 'dart:ffi';

import 'package:flutter/material.dart';

class Peluqueria {

  String nombre;
  String descripcion;
  bool femenina; //True: Femenina False: Sin genero
  double latitud;
  double longitud;
  String rutaImg;

  Peluqueria({
    @required this.nombre,
    @required this.descripcion,
    @required this.femenina,
    @required this.latitud,
    @required this.longitud,
    @required this.rutaImg,
  });

}