import 'package:flutter/material.dart';
import 'package:lrn_flt_routes/_tst_formular/form2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is the title',
      home: FormWidget(),
    );
  }
}
