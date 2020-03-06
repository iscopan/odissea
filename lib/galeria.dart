import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Galeria extends StatefulWidget{


  const Galeria({Key key}) : super(key: key);

  @override
  State<Galeria> createState(){
    return new GaleriaState();
  }

}

class GaleriaState extends State<Galeria>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            // Agrega un app bar al CustomScrollView
            SliverAppBar(
              title: Text('Cromos de Segovia'),
              floating: true,
              backgroundColor: Color.fromRGBO(30, 250, 130, 100),
            ),
            // A continuación, crea un SliverList
            SliverList(
              // Para ello, se utiliza un delegado para crear elementos a medida que
              // se desplazan por la pantalla.
              delegate: SliverChildBuilderDelegate(
                // La función builder devuelve un ListTile con un título que
                // muestra el índice del elemento actual
                    (context, index) => ListTile(title: Text('Item #$index')),
                // Construye 1000 ListTiles
                childCount: 20,
              ),
            ),
          ],
        ),
    );
  }

}