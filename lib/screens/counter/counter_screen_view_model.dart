import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier_example/flamework/controller_type.dart';
import 'package:state_notifier_example/flamework/state_type.dart';
import 'package:state_notifier_example/screens/counter/grid_item.dart';

part 'counter_screen_view_model.freezed.dart';

@freezed
abstract class State extends StateType with _$State {
  const factory State({
    @Default([]) List<GridItem> items,
    @Default(0) int redCounts,
    @Default(0) int greenCounts,
  }) = _State;
}

class Controller extends ControllerType<State> {
  Controller() : super(const State());

  addItem(GridItem item) {
    var newList = state.items.toList(growable: true);
    newList.add(item);
    state = state.copyWith(
        items: newList,
        redCounts: _redItemCount(newList),
        greenCounts: _greenItemCount(newList));
  }

  removeItem() {
    if (state.items.isEmpty) {
      return;
    }
    var newList = state.items.toList(growable: true);
    newList.removeLast();
    state = state.copyWith(
        items: newList,
        redCounts: _redItemCount(newList),
        greenCounts: _greenItemCount(newList));
  }

  // TODO: 以下Count系の関数、いけてない
  int redItemCount() {
    return _redItemCount(state.items);
  }

  int _redItemCount(List<GridItem> items) {
    var a = [for (final item in items) item.runtimeType];
    return a
        .where((element) =>
    element == GridItem
        .red()
        .runtimeType)
        .length;
  }

  int greenItemCount() {
    return _greenItemCount(state.items);
  }

  int _greenItemCount(List<GridItem> items) {
    var a = [for (final item in items) item.runtimeType];
    return a
        .where((element) =>
    element == GridItem
        .green()
        .runtimeType)
        .length;
  }
}
