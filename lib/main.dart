import 'package:flutter/material.dart';
import 'package:odissea/tutorial.dart';

import 'cromo.dart';
import 'tutorial.dart';
import 'vistaCromoWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PantallaTutorial(),
    );
  }

}
