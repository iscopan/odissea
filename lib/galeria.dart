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
              // Permite al usuario revelar el app bar si comienza a desplazarse
              // hacia arriba en la lista de elementos
              //Probablemente lo cambie

              floating: true,
              // Mostrar un widget placeholder para visualizar el tamaño de reducción
              flexibleSpace: Placeholder(),
              // Aumentar la altura inicial de la SliverAppBar más de lo normal
              expandedHeight: 200,
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
                childCount: 1000,
              ),
            ),
          ],
        ),
    );
  }

}