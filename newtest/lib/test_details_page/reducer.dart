import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ComEditState> buildReducer() {
  return asReducer<ComEditState>(<Object, Reducer<ComEditState>>{
    ComEditAction.update: _update,
  });
}

ComEditState _update(ComEditState state, Action action) {
  final Map<String, String> update = action.payload ?? <String, String>{};
  final ComEditState newState = state.clone();
  newState.toDo.name = update['name'] ?? newState.toDo.name;
  newState.toDo.price = update['price'] ?? newState.toDo.price;
  return newState;
}
