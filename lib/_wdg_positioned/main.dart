import 'package:flutter/material.dart';
import 'package:lrn_flt_routes/_wdg_positioned/positioned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is the title',
      home: PositionWidget(),
    );
  }
}
