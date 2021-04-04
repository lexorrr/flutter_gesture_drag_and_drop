import 'package:flutter/material.dart';
import 'package:flutter_gesture_drag_and_drop/providers/game_score.dart';
import 'package:flutter_gesture_drag_and_drop/widgets/drag_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameScore>(
      create: (_) => GameScore(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop'),
      ),
      body: const Center(
        child: DragWidget(),
      ),
    );
  }
}

