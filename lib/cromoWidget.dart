import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';

class cromoWidget extends StatelessWidget{

  final Cromo cromoPasado;

  const cromoWidget({Key key, @required this.cromoPasado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(cromoPasado.nombre),
        )
      ),
      body: Container(

      ),

    );
  }


}
