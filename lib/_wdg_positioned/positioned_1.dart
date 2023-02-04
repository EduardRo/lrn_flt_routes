import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  const PositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.network(
              'https://media.springernature.com/full/springer-cms/rest/v1/img/23575794/v2/height/320',
              width: 550,
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Image.network(
              'https://tinyurl.com/yc4pctt5',
              width: 250,
            ),
          ),
          Positioned(
            left: 320.0,
            top: 120.0,
            child: Image.network(
              'https://media.springernature.com/full/springer-cms/rest/v1/img/23928322/v2/height/320',
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
