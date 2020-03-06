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