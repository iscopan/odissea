import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';

class Galeria extends StatefulWidget{


  const Galeria({Key key}) : super(key: key);

  @override
  State<Galeria> createState(){
    return new GaleriaState();
  }

}

class GaleriaState extends State<Galeria>{
  final Cromo cromoAcueducto = new Cromo(
    nombre: "Acueducto",
    descripcion: "Está construido con sillares de granito asentados sin argamasa entre ellos. Sobre los tres arcos de mayor altura había en la época romana una cartela con letras de bronce donde constaba la fecha y el constructor.",
    latitud: 40.9322427,
    longitud: -4.0898234,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 06,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoAlcazar = new Cromo(
    nombre: "Alcázar",
    descripcion: "Se trata de uno de los castillos - palacio de finales de la Edad Media, comienzos de la Edad Moderna, más distintivos de toda Europa en virtud de su forma de proa de barco. Su imponente perfil se levanta, majestuoso, sobre el valle del Eresma",
    latitud: 40.9525725,
    longitud: -4.1325378,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 03,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoCatedral = new Cromo(
    nombre: "Catedral",
    descripcion: "Conocida como la Dama de las Catedrales por sus dimensiones y su elegancia, es una catedral construida entre los siglos XVI y XVIII, de estilo gótico con algunos rasgos renacentistas. Está situada en la Plaza Mayor, cerca del Ayuntamiento.",
    latitud: 40.9501039,
    longitud: -4.1253314,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 05,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoUniversidad = new Cromo(
    nombre: "Campus María Zambrano",
    descripcion: "Ofrece estudios de pregrado y posgrado en humanidades, ciencias sociales, ingeniería y administración y dirección de empresas. Pertenece a la Universidad de Valladolid.",
    latitud: 40.943139,
    longitud: -4.114222,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 07,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoLuzCastilla = new Cromo(
    nombre: "C.C Luz de Castilla",
    descripcion: "El C.C. Luz de Castilla es el único centro comercial con hipermercado de la provincia, siendo el referente de compras y ocio de Segovia.",
    latitud: 40.921081,
    longitud: -4.1116797,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 09,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoRenfe = new Cromo(
    nombre: "Estación de tren",
    descripcion: "La estación de Segovia-Guiomar da servicio a la Línea de alta velocidad Madrid-Segovia-Valladolid. Está situada en el kilómetro 76 de dicha línea y a 7 kilómetros del centro de la ciudad de Segovia.",
    latitud: 40.9101,
    longitud: -4.09492,
    creador: "Ayuntamiendo de Segovia",
    numeroCromo: 06,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoEstBus = new Cromo(
    nombre: "Estación de autobuses",
    descripcion: "Gran parte del sustento económico de Segovia es el turismo, ya que la ciudad cuenta con gran cantidad de monumentos entre los que destacamos: el Acueducto de Segovia, el Alcázar de Segovia, la Catedral de Santa María",
    latitud: 40.9451158,
    longitud: -4.1219865,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 01,
    rutaImg: 'images/acueducto.jpg',
  );

  final Cromo cromoTheatre = new Cromo(
    nombre: "Canavans-Theatre Segovia",
    descripcion: "",
    latitud: 40.9505245,
    longitud: -4.1223875,
    creador: "Ayuntamiendo de Segovia",
    numeroCromo: 02,
    rutaImg: 'images/acueducto.jpg',
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Cromos de Segovia"),
        backgroundColor: Color.fromRGBO(0, 220, 150, 1),
      ),
      body: Container(
          child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    //Los container serían los cromos
                    Container(
                      height: 30,
                      width: 40,
                      child: Image.asset(cromoAcueducto.rutaImg.toString()),
                    ),
                    Container(
                      //Aquí va un cromo
                    ),
                    Container(
                      //Aquí va un cromo
                    ),
                    Container(
                      //Aquí va un cromo
                    ),Container(
                      //Aquí va un cromo
                    ),
                    Container(
                      //Aquí va un cromo
                    ),
                    Container(
                      //Aquí va un cromo
                    ),
                    Container(
                      //Aquí va un cromo
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}