import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
    );
  }
}
