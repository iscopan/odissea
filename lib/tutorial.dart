import 'package:flutter/material.dart';
import 'package:odissea/plato.dart';

class PantallaTutorial extends StatelessWidget {

  const PantallaTutorial({Key key}) : super(key: key);

  final String titulo = 'Odissea';
  final String explicacion = "Una app basada en cromos que sabiendo la distancia a diferentes puntos de interes calcula lo que contaminaría ir en coche. Calcula cuantas calorías consumirás y su equivalencia en platos de tu comida favorita";
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
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Expanded(
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'images/logo.png',
                  fit: BoxFit.cover,
                ),
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
            minWidth: 200,
            height: 60,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlatoTutorial())
              );
            },
            color: Color.fromRGBO(0, 220, 150, 100),
            child: const Text(
              'Siguiente',
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