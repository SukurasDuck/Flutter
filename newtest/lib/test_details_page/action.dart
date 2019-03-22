import 'package:fish_redux/fish_redux.dart';

enum ComEditAction { update, done }

class ToDoEditActionCreator {
  static Action update(String name, String desc) {
    return Action(
      ComEditAction.update,
      payload: <String, String>{'name': name, 'price': desc},
    );
  }

  static Action done() {
    return const Action(ComEditAction.done);
  }
}
