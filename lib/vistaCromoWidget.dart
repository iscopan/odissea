import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';

class VistaCromoWidget extends StatelessWidget{

  final Cromo cromoPasado;

  const VistaCromoWidget({Key key, @required this.cromoPasado}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(cromoPasado.nombre),
          )
      ),
      body: Container(
        child: Column(
          children: <Widget>[

          ],
          
        ),
      ),

    );
  }


}
