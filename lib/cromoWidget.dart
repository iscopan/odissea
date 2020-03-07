import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';

class CromoWidget extends StatelessWidget{

  final Cromo cromoPasado;

  const CromoWidget({Key key, @required this.cromoPasado}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return Container(
     child: Transform.scale(
       child: Center(
         child: AspectRatio(
           aspectRatio: 3/4,
           child: Container(
               child: ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Container(
                     child: Image.asset(cromoPasado.rutaImg.toString(),fit: BoxFit.cover,),
                   )
               )
           ),
         ),
       ),
       scale: (3/4) / (MediaQuery.of(context).size.width/MediaQuery.of(context).size.height*1.8),
     ),
   );
  }
}

class CromoWidgetDetras extends StatelessWidget{

  final Cromo cromoPasado;

  const CromoWidgetDetras({Key key, @required this.cromoPasado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.scale(
        scale: (3/4) / (MediaQuery.of(context).size.width/MediaQuery.of(context).size.height*1.8),
        child: Center(
          child: AspectRatio(
            aspectRatio: 3/4,
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      color: (Color.fromRGBO(0, 220, 150, 1)),
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.all(25),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      color: Colors.white,
                                      padding: EdgeInsets.all(10),
                                      child: Text(cromoPasado.descripcion,textScaleFactor: 1.3,),
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(25),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      color: Colors.white,
                                      child:
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left:10.0),
                                          ),
                                          Icon(Icons.directions_bus,),
                                          Padding(
                                            padding: EdgeInsets.only(left:10.0),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(100),
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              color: Colors.redAccent,
                                              child: Text(cromoPasado.bus.toString()),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(25),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(cromoPasado.creador,
                                          textAlign: TextAlign.center, textScaleFactor: 2,),
                                      ),
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      )
                  )
              ),
            ),
          ),
        ),
      )
    );
  }
}
