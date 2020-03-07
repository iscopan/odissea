import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:odissea/cromo.dart';
import 'package:odissea/cromoWidget.dart';

class VistaCromoWidget extends StatefulWidget{

  final Cromo cromoPasado;

  const VistaCromoWidget({Key key, @required this.cromoPasado}) : super(key: key);

  State<VistaCromoWidget> createState(){
    return new VistaCromoWidgetState();
  }

}

class VistaCromoWidgetState extends State<VistaCromoWidget>{

  bool deCara;

  @override
  void initState() {
    deCara = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(widget.cromoPasado.nombre),
      ),

      body: GestureDetector(
        onTap: (){
          setState(() {
            deCara = !deCara;
          });
          print("yas");
        },
        child: Container(
            padding:  EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  if(deCara == true)
                    CromoWidget(cromoPasado: widget.cromoPasado,)
                  else
                    CromoWidgetDetras(cromoPasado: widget.cromoPasado,),
                ],

              ),
            )

        ),
      )

    );
  }

}