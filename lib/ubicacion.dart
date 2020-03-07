import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odissea/final.dart';

class UbicacionTutorial extends StatelessWidget {

  UbicacionTutorial({Key key, @required this.platoFav}) : super(key: key);
  final String explicacion = "Odissea necesita acceder a tu ubicación para que pueda calcular las distancias desde el lugar en el que te enuentres al abrir la app. ";
  final int platoFav;

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
              'Permisos',
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(20),
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

            MaterialButton(
              minWidth: 150,
              height: 60,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FinalTutorial(platoFav: platoFav))
                );
              },
              color: Color.fromRGBO(0, 220, 150, 100),
              child: const Text(
                'Conceder permisos',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
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