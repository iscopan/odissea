import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';
import 'package:odissea/vistaCromoWidget.dart';

class Galeria extends StatefulWidget{

  final int platoFav;

  const Galeria({Key key, @required this.platoFav}) : super(key: key);

  @override
  State<Galeria> createState(){
    return new GaleriaState();
  }

}

class GaleriaState extends State<Galeria>{
  final Cromo cromoAcueducto = new Cromo(
    nombre: "Acueducto",
    descripcion: "Monumento romano histórico de la ciudad de Segovia, famoso por sus leyendas",
    latitud: 40.9322427,
    longitud: -4.0898234,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 06,
    rutaImg: 'images/acueducto.jpg',
    bus: 6,
    calorias: 44,
    cantidadCroquetas: 1,
    cantidadMacarrones: 1,
    cantidadPatatas: 1,
    cantidadPizza: 1,
    co2: 17.74,
  );

  final Cromo cromoAlcazar = new Cromo(
    nombre: "Alcázar",
    descripcion: "Castillo segoviano de la época de la conquista musulmana de España, lo caracteriza su torreón",
    latitud: 40.9525725,
    longitud: -4.1325378,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 03,
    rutaImg: 'images/alcazar.jpg',
    bus: 3,
    calorias: 122,
    cantidadCroquetas: 2,
    cantidadMacarrones: 1,
    cantidadPatatas: 1,
    cantidadPizza: 3,
    co2: 49.59,
  );

  final Cromo cromoCatedral = new Cromo(
    nombre: "Catedral",
    descripcion: "De la edad media, esta catedral está caracterizada por ser gótica con rasgos renacentistas",
    latitud: 40.9501039,
    longitud: -4.1253314,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 05,
    rutaImg: 'images/catedral.jpg',
  );

  final Cromo cromoUniversidad = new Cromo(
    nombre: "Campus María Zambrano",
    descripcion: "Centro de estudio de la comunidad universitaria de Segovia. Pertenece a la Universidad de Valladolid",
    latitud: 40.943139,
    longitud: -4.114222,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 07,
    rutaImg: 'images/mariaZambrano.jpg',
  );

  final Cromo cromoLuzCastilla = new Cromo(
    nombre: "C.C Luz de Castilla",
    descripcion: "El C.C. Luz de Castilla es el único centro comercial con hipermercado de la provincia, siendo el referente de compras y ocio de Segovia.",
    latitud: 40.921081,
    longitud: -4.1116797,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 09,
    rutaImg: 'images/luzCastilla.jpeg',
    bus: 10,
    calorias: 148,
    cantidadCroquetas: 2,
    cantidadMacarrones: 1,
    cantidadPatatas: 1,
    cantidadPizza: 4,
    co2: 60,
  );

  final Cromo cromoRenfe = new Cromo(
    nombre: "Estación de tren",
    descripcion: "Estación de Segovia-Guiomar con un gran afluente turístico debido al patrimonio histórico de Segovia.",
    latitud: 40.9101,
    longitud: -4.09492,
    creador: "Ayuntamiendo de Segovia",
    numeroCromo: 06,
    rutaImg: 'images/renfe.jpg',
  );

  final Cromo cromoEstBus = new Cromo(
    nombre: "Estación de autobuses",
    descripcion: "Centro de salida de los autobuses que recorren la provincia de Segovia",
    latitud: 40.9451158,
    longitud: -4.1219865,
    creador: "Ayuntamiento de Segovia",
    numeroCromo: 01,
    rutaImg: 'images/estBuses.jpg',
  );

  final Cromo cromoTheatre = new Cromo(
    nombre: "Canavans-Theatre Segovia",
    descripcion: "Un bar ambientado en un teatro y diseñado para desconectar toda preocupación durante la noche.",
    latitud: 40.9505245,
    longitud: -4.1223875,
    creador: "Ayuntamiendo de Segovia",
    numeroCromo: 02,
    rutaImg: 'images/theatre.jpg',
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Cromos de Segovia"),
        backgroundColor: Color.fromRGBO(0, 220, 150, 1),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15, top: 10, bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Color.fromRGBO(00, 200, 120, 1),
                child: Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 2),),
                    Text("165"),
                    Padding(padding: EdgeInsets.only(right: 2),),
                    Icon(Icons.monetization_on, color: Colors.white,)
                  ],
                ),

              ),
            ),
          ),
        ],
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
                  childAspectRatio: 3/4,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoAcueducto))
                          );
                        },
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoAcueducto.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoAlcazar,))
                          );
                        },
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoAlcazar.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoUniversidad.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoUniversidad,))
                          );
                        },
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoLuzCastilla.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoLuzCastilla,))
                          );
                        },
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoCatedral.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoCatedral,))
                          );
                        },
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoEstBus.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoEstBus,))
                          );
                        },
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoRenfe.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoRenfe,))
                          );
                        },
                      )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: GestureDetector(
                        child: Container(
                          color: Color.fromRGBO(0, 220, 150, 1),
                          child: Image.asset(
                            cromoTheatre.rutaImg.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VistaCromoWidget(cromoPasado: cromoTheatre,))
                          );
                        },
                      )
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromRGBO(0, 220, 150, 1),
        unselectedItemColor: Color.fromRGBO(0, 220, 150, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.find_in_page
            ),
            title: Text(
                'Filtros'
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.add
            ),
            title: Text(
                'Cromos Privados'
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.person_pin
              ),
              title: Text(
                  'Perfil'
              ),
          ),
        ],
      ),
    );
  }
}