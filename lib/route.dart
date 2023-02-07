import 'package:flutter/material.dart';
import 'package:lrn_flt_routes/home_page.dart';

// Routes Names
class RouteGenerator {
// Control our page route flow

  static Route<dynamic> controllerRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
        body: const Center(
          child: Text('error'),
        ),
      );
    });
  }
}
