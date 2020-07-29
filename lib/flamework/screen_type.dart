import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/flamework/controller_type.dart';
import 'package:state_notifier_example/flamework/state_type.dart';

abstract class ScreenType<S extends StateType, C extends ControllerType>
    extends StatelessWidget {
  S state(BuildContext context) => context.watch<S>();

  C controller(BuildContext context) => context.read<C>();
}
