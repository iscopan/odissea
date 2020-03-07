import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odissea/ubicacion.dart';

class PlatoTutorial extends StatelessWidget {

  const PlatoTutorial({Key key}) : super(key: key);
  final String explicacion = "Elige el plato que más te guste, este será el plato de referencia. ¡Cuanta más distancia recorras mas platos podrás comer!";


  @override
  Widget build(BuildContext context) {
     return Container(
       color: Colors.white,
       child: Center(
         child: Column(
           mainAxisSize: MainAxisSize.max,
           children: [
             Padding(
               padding: EdgeInsets.all(40),
             ),
             Text(
               'Plato favorito',
               textAlign: TextAlign.center,
               style: TextStyle(
                   decoration: TextDecoration.none,
                   color: Colors.black
               ),
             ),
             Padding(
               padding: EdgeInsets.all(15),
             ),
             Container(
               width: 200,
               height: 200,
               child: Image.asset(
                 'images/comida.png',
                 fit: BoxFit.fill,
               ),
             ),
             Padding(
               padding: EdgeInsets.all(12),
             ),
             Expanded(
               child: Container(
                 margin: EdgeInsets.all(30),
                 child: Text(
                   explicacion,
                   style: TextStyle(
                       fontSize: 14,
                       decoration: TextDecoration.none,
                       color: Colors.black
                   ),
                   textAlign: TextAlign.justify,
                 ),
               ),
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 MaterialButton(
                   minWidth: 150,
                   height: 60,
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => UbicacionTutorial(platoFav: 1))
                     );
                   },
                   color: Color.fromRGBO(0, 220, 150, 100),
                   child: const Text(
                     'Pizza',
                     style: TextStyle(
                         fontSize: 20,
                         color: Colors.white
                     ),
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.all(10),
                 ),

                 MaterialButton(
                   minWidth: 150,
                   height: 60,
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => UbicacionTutorial(platoFav: 2))
                     );
                   },
                   color: Color.fromRGBO(0, 220, 150, 100),
                   child: const Text(
                     'Patatas',
                     style: TextStyle(
                         fontSize: 20,
                         color: Colors.white
                     ),
                   ),
                 ),
               ],
             ),

             Padding(
               padding: EdgeInsets.all(10),
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 MaterialButton(
                   minWidth: 150,
                   height: 60,
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => UbicacionTutorial(platoFav: 3))
                     );
                   },
                   color: Color.fromRGBO(0, 220, 150, 100),
                   child: const Text(
                     'Croquetas',
                     style: TextStyle(
                         fontSize: 20,
                         color: Colors.white
                     ),
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.all(10),
                 ),

                 MaterialButton(
                   minWidth: 150,
                   height: 60,
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => UbicacionTutorial(platoFav: 4))
                     );
                   },
                   color: Color.fromRGBO(0, 220, 150, 100),
                   child: const Text(
                     'Macarrones',
                     style: TextStyle(
                         fontSize: 20,
                         color: Colors.white
                     ),
                   ),
                 ),
               ],
             ),

             Padding(
               padding: EdgeInsets.all(20),
             ),
           ],
         ),
       ),
     );
   }
}