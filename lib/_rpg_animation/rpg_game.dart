import 'package:flutter/material.dart';
import 'dart:math';
import 'package:bonfire/bonfire.dart';

double tileSize = 32;

class RPGGame extends StatefulWidget {
  const RPGGame({super.key});

  @override
  State<RPGGame> createState() => _RPGGameState();
}

class _RPGGameState extends State<RPGGame> implements GameListener {
  late GameController _controller;
  bool showGameOver = false;
  bool showGameWon = false;
  @override
  void initState() {
    super.initState();
    _controller = GameController()..addListener(this);
  }

  @override
  void changeCountLiveEnemies(int count) {}
  @override
  void updateGame() {}

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    tileSize = max(sizeScreen.height, sizeScreen.width) / 15;

    return BonfireWidget(
      gameController: _controller,
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      map: WorldMapByTiled(
        'tiled/tilechart.json',
        forceTileSize: Vector2(tileSize, tileSize),
      ),
      lightingColorGame: Colors.black.withOpacity(0.6),
      background: BackgroundColorGame(Colors.grey[900]!),
    );
  }
}
