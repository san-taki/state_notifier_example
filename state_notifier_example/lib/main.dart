import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_example/counter_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<CounterStateNotifier, CounterState>(
        create: (_) => CounterStateNotifier(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateNotifierExample'),
      ),
      body: Text(context.select<CounterState, int>((state) => state.count).toString()),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildFloatingActionButton(context, Colors.redAccent, () {
            context.read<CounterStateNotifier>().increment();
          }),
          _buildFloatingActionButton(context, Colors.greenAccent, () {
            context.read<CounterStateNotifier>().increment();
          }),
          _buildFloatingActionButton(context, Colors.blueAccent, () {
            context.read<CounterStateNotifier>().increment();
          })
        ],
      ),
    );
  }

  Widget _buildGridView(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ));
  }

  Widget _buildFloatingActionButton(
      BuildContext context, Color color, VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: FloatingActionButton(
        backgroundColor: color,
        onPressed: () => onPressed(),
      ),
    );
  }
}
