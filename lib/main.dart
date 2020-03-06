import 'package:flutter/material.dart';
import 'package:odissea/tutorial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      home: PantallaTutorial(),
    );
  }

}