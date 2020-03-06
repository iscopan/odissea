import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';
import 'package:odissea/cromoWidget.dart';

class VistaCromoWidget extends StatelessWidget{

  final Cromo cromoPasado;

  const VistaCromoWidget({Key key, @required this.cromoPasado}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
             Text(cromoPasado.nombre),
      ),

      body: Container(
        padding:  EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              cromoWidget(cromoPasado: cromoPasado,),
              Row(
                children: <Widget>[
                  Text("hola")
                ],
              ),
            ],

          ),
        )

      ),

    );
  }


}
