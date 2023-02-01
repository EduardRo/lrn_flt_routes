import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hllh',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                ],
              )),
        ),
      ),
    );
  }
}
