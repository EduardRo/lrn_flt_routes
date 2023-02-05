import 'package:flutter/material.dart';
import 'argumentclass.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  //String vari = 'aste e variabiala pe care vreau s-o trimit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: const Text('Go to second'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: ScreenArguments(
                    'valoare1',
                    'valoare2',
                    'valoare3',
                    'valoare4',
                    'valoare5',
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
