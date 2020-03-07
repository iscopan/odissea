import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odissea/galeria.dart';

class FinalTutorial extends StatelessWidget {

  FinalTutorial({Key key, this.platoFav}) : super(key: key);
  final String explicacion = "En Segovia hay muchos sitios turísticos a los que poder ir! Toma estos cromos de los lugares que debes conocer en esta ciudad. ¡Camina para conseguir más cromos!";
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
              'Estás en Segovia!',
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
              child: Image.asset(
                'images/segovia.png',
                fit: BoxFit.fill,
              ),
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
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) =>  Galeria(platoFav: platoFav)),
                      (Route<dynamic> route) => false,
                );
              },
              color: Color.fromRGBO(0, 220, 150, 100),
              child: const Text(
                'Gracias',
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