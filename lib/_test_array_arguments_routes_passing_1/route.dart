import 'package:flutter/material.dart';
import 'package:lrn_flt_routes/main.dart';

import 'argumentclass.dart';

class GenerateRoute {
  static Route<dynamic> routeGenerate(RouteSettings settings) {
    final args = settings.arguments as ScreenArgument?;

    switch (settings.name) {
      case '/':
        return const MyApp();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Eroor')),
        body: const Center(
          child: Text('error'),
        ),
      );
    });
  }
}



//class RouteGenerator {
//  static Route<dynamic> generateRoute(RouteSettings settings) {
//    final args = settings.arguments as ScreenArguments?;

// GenerateRoute.routeGenerate,