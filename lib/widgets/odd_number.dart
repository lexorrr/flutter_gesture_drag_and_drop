import 'package:flutter/material.dart';
import 'package:flutter_gesture_drag_and_drop/mixins/snack_message.dart';
import 'package:flutter_gesture_drag_and_drop/providers/game_score.dart';
import 'package:flutter_gesture_drag_and_drop/widgets/number_box.dart';
import 'package:provider/provider.dart';

class OddContainer extends StatelessWidget with SnackMessage {
  const OddContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.lightGreen,
      ),
      child: DragTarget<int>(
        onAccept: (data) => _onAccept(context, data),
        onWillAccept: _willAccept,
        builder: (context, _, __) {
          return const Rectangle(text: 'Odd');
        },
      ),
    );
  }

  void _onAccept(BuildContext context, int data) {
    Provider.of<GameScore>(context, listen: false).addPoints(data);
    showMessage(context, "Points: + $data");
  }

  bool _willAccept(int? data) => data != null && data % 2 != 0;
}
