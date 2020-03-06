import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';
import 'package:odissea/cromoWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final Cromo cromoEjemplo = new Cromo(nombre: "Acueducto",
      descripcion: "Está construido con sillares de granito asentados sin argamasa entre ellos. Sobre los tres arcos de mayor altura había en la época romana una cartela con letras de bronce donde constaba la fecha y el constructor.",
      latitud: 40.9322427,
      longitud: -4.0898234,
      creador: "Ayuntamiendo de Segovia",
      numeroCromo: 06);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cromoWidget(cromoPasado: cromoEjemplo),
    );
  }

}