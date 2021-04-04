import 'package:flutter/material.dart';
import 'package:flutter_gesture_drag_and_drop/providers/game_score.dart';
import 'package:provider/provider.dart';

class NumberContainer extends StatelessWidget {
  const NumberContainer();

  @override
  Widget build(BuildContext context) {
    return Consumer<GameScore>(
      builder: (context, game, _) {
        return Draggable(
          data: game.currentValue,
          feedback: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.black26,
            ),
            child: Center(
              child: Text(
                '${game.currentValue}',
                style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          child: Container(
            width: 60,
            height: 60,
            child: Center(
              child: Text('${game.currentValue}'),
            ),
          ),
        );
      },
    );
  }
}
