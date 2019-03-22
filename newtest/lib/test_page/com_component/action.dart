import 'package:fish_redux/fish_redux.dart';

import '../model.dart';
enum ComAction { onEdit, edit, done }

class ComActionCreator {
  static Action onEditAction(String id) {
    return Action(ComAction.onEdit, payload: id);
  }

  static Action editAction(Commodity com) {
    return Action(ComAction.edit, payload: com);
  }

}

