import 'package:flutter/material.dart';
import '../src/screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // BottomSheet use material canvas color by default. so to remove this we have to override.
      theme: new ThemeData(canvasColor: Colors.transparent),
      home: HomeScreen(),
    );
  }
}
