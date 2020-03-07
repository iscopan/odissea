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
  double calorias;
  int cantidadPizza;
  int cantidadPatatas;
  int cantidadMacarrones;
  int cantidadCroquetas;
  double co2;


  Cromo({
    @required this.nombre,
    @required this.descripcion,
    @required this.latitud,
    @required this.longitud,
    @required this.creador,
    @required this.numeroCromo,
    @required this.rutaImg,
    @required this.bus,
    @required this.calorias,
    @required this.cantidadPizza,
    @required this.cantidadPatatas,
    @required this.cantidadCroquetas,
    @required this.cantidadMacarrones,
    @required this.co2,

  });

}