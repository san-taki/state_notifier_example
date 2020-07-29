import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_example/flamework/state_type.dart';

abstract class ControllerType<S extends StateType> extends StateNotifier<S>{
  ControllerType(S state) : super(state);
}
