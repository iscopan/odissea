import 'package:flutter/material.dart';
import 'package:odissea/cromo.dart';
import 'package:odissea/tutorial.dart';
import 'package:odissea/vistaCromoWidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PantallaTutorial(),
    );
  }

}
