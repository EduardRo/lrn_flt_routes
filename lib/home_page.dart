import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: Column(
          children: const [
            Text('this is the body d'),
          ],
        ),
      ),
    );
  }
}
