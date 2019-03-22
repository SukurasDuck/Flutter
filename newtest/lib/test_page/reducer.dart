import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';
import 'model.dart';


Reducer<ComList> buildReducer() {
  return asReducer<ComList>(<Object, Reducer<ComList>>{
    ToDoEditaAction.initList:_initList ,
    //ToDoEditaAction.add:_add
  });
}
ComList _initList(ComList state, Action action) {
  final List<Commodity> newComs=action.payload??<Commodity>[];
  final ComList newStore=state.clone();
  newStore.list=newComs;
  return newStore;
}

//ComList _add(ComList state, Action action) {
//  final Commodity toDo = action.payload;
//  final ComList newState = state.clone();
//  newState.list.add(toDo);
//  return newState;
//}
