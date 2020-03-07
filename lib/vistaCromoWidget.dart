import 'package:flutter/material.dart';
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
                EstadisticasWidget(cromoPasado: widget.cromoPasado,)
              ],
            ),
          )
        ),
      )

    );
  }

}

class EstadisticasWidget extends StatelessWidget{

  final Cromo cromoPasado;

  const EstadisticasWidget({Key key, @required this.cromoPasado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  padding:  EdgeInsets.all(10),
                  color: (Color.fromRGBO(0, 220, 150, 1)),
                  child: Text("Vas a quemar " + cromoPasado.calorias.toString() +
                      " kcal\nPodrás comerte " + cromoPasado.cantidadCroquetas.toString() + " croqueta",
                    textScaleFactor: 1.2,),
                )
            ),
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
          ),
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  padding:  EdgeInsets.all(10),
                  color: (Colors.redAccent),
                  child: Text("Emitirás " + cromoPasado.co2.toString() +
                      " gramos de CO2 menos.", textScaleFactor: 1.2),
                )
            ),
            flex: 1,
          ),
        ],
      )
    );
  }
}