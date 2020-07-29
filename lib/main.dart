import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/counter_state.dart';
import 'package:state_notifier_example/grid_item.dart';

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
      body: _buildGridView(context),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildFloatingActionButton(context, FabType.Red),
          _buildFloatingActionButton(context, FabType.Green),
          _buildFloatingActionButton(context, FabType.Purple),
        ],
      ),
    );
  }

  Widget _buildGridView(BuildContext context) {
    return GridView(
        children: context
            .select<CounterState, List<GridItem>>((state) => state.items)
            .map((item) => _buildCard(item))
            .toList(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ));
  }

  Widget _buildCard(GridItem item) {
    return item.when(
        red: (_) => Card(child: _buildCardLabel(item.num), color: Colors.red),
        green: (_) =>
            Card(child: _buildCardLabel(item.num), color: Colors.green));
  }

  Widget _buildCardLabel(int number) {
    return Center(
      child: Text(
        number.toString(),
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context, FabType type) {
    switch (type) {
      case FabType.Red:
        return Padding(
          padding: EdgeInsets.all(10),
          child: FloatingActionButton.extended(
            label: Text(":赤" +
                context
                    .select<CounterState, dynamic>((state) => state.redCounts)
                    .toString() +
                "枚"),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            onPressed: () {
              var sn = context.read<CounterStateNotifier>();
              sn.addItem(GridItem.red(sn.redItemCount() + 1));
            },
          ),
        );
        break;
      case FabType.Green:
        return Padding(
          padding: EdgeInsets.all(10),
          child: FloatingActionButton.extended(
            label: Text(":緑" +
                context
                    .select<CounterState, dynamic>((state) => state.greenCounts)
                    .toString() +
                "枚"),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.green,
            onPressed: () {
              var sn = context.read<CounterStateNotifier>();
              sn.addItem(GridItem.green(sn.greenItemCount() + 1));
            },
          ),
        );
        break;
      case FabType.Purple:
        return Padding(
          padding: EdgeInsets.all(10),
          child: FloatingActionButton(
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
            backgroundColor: Colors.deepPurple,
            onPressed: () {
              context.read<CounterStateNotifier>().removeItem();
            },
          ),
        );
        break;
    }
  }
}

enum FabType { Red, Green, Purple }
