import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';
import 'package:odissea/peluqueria.dart';

class PeluqueriaWidget extends StatelessWidget{

  final Peluqueria peluqueriaPasada;

  const PeluqueriaWidget({Key key, @required this.peluqueriaPasada}) : super(key: key);

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
                      child: Image.asset(peluqueriaPasada.rutaImg.toString(),fit: BoxFit.cover,),
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


