import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Placeholder(),
        Text(
          'Home Page',
          selectionColor: Colors.blue,
        )
      ],
    );
  }
}
