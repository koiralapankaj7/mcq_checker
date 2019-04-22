import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/result_screen.dart';

class AppRoutes {
  Route routes(RouteSettings settings) {
    // Home screen
    if (settings.name == '/') {
      return MaterialPageRoute(
        builder: (BuildContext context) {
          return HomeScreen();
        },
      );
    }
    // Result screen
    else {
      return MaterialPageRoute(
        builder: (BuildContext context) {
          return ResultScreen();
        },
      );
    }
  }
}

final AppRoutes appRoutes = AppRoutes();
