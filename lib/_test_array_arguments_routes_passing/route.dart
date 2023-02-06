import 'package:flutter/material.dart';
import 'page3.dart';
import 'page1.dart';
import 'page2.dart';

import 'argumentclass.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as ScreenArguments?;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const FirstPage());
      case '/second':
        // ignore: unrelated_type_equality_checks

        return MaterialPageRoute(builder: (BuildContext context) {
          ScreenArguments argument = args!;
          return SecondPage(
              r1: argument.r1,
              r2: argument.r2,
              r3: argument.r3,
              r4: argument.r4,
              r5: argument.r5);
        });
      case '/third':
        return MaterialPageRoute(
            builder: (_) => const ThirdPage(
                r1: 'df', r2: 'dd', r3: 'dd', r4: 'fff', r5: 'r5'));
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
