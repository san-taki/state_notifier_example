import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/flamework/screen_type.dart';
import 'package:state_notifier_example/screens/counter/counter_screen_view_model.dart'
    as vm;
import 'package:state_notifier_example/screens/counter/grid_item.dart';

class CounterScreen extends ScreenType<vm.State, vm.Controller> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<vm.Controller, vm.State>(
            create: (_) => vm.Controller()),
      ],
      child: Builder(
        builder: (context) {
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
        },
      ),
    );
  }

  Widget _buildGridView(BuildContext context) {
    return GridView(
        children: state(context).items.map((item) => _buildCard(item)).toList(),
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
            label: Text(":赤" + state(context).redCounts.toString() + "枚"),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            onPressed: () {
              controller(context).addItem(GridItem.red(controller(context).redItemCount() + 1));
            },
          ),
        );
        break;
      case FabType.Green:
        return Padding(
          padding: EdgeInsets.all(10),
          child: FloatingActionButton.extended(
            label: Text(":緑" + state(context).greenCounts.toString() + "枚"),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.green,
            onPressed: () {
              controller(context).addItem(GridItem.green(controller(context).greenItemCount() + 1));
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
              controller(context).removeItem();
            },
          ),
        );
        break;
    }
  }
}

enum FabType { Red, Green, Purple }
