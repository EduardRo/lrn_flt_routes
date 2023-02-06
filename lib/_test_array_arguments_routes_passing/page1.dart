import 'package:flutter/material.dart';
import 'argumentclass.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  //String vari = 'aste e variabiala pe care vreau s-o trimit';

  @override
  Widget build(BuildContext context) {
    late String asvar = 'stringss12';
    late String path = '/second';

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
                  path,
                  arguments: ScreenArguments(
                    asvar,
                    path,
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
