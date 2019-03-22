import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import '../model.dart';
import '../state.dart';

Reducer<Commodity> buildReducer() {
  return asReducer(<Object, Reducer<Commodity>>{
    ComAction.edit: _edit,
  });
}

Commodity _edit(Commodity state, Action action) {
  final Commodity com = action.payload;
  if (state.id == com.id) {
    return state.clone()
      ..name = com.name
      ..price = com.price;
  }
  return state;
}

