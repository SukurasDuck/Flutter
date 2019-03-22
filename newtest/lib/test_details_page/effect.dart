import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../test_page/model.dart';
import 'action.dart';
import 'state.dart';


Effect<ComEditState> buildEffect() {
  return combineEffects(<Object, Effect<ComEditState>>{
    Lifecycle.initState: _init,
    ComEditAction.done: _onDone,
  });
}

void _init(Action action, Context<ComEditState> ctx) {
  ctx.state.nameEditController.addListener(() {
    ctx.dispatch(
        ToDoEditActionCreator.update(ctx.state.nameEditController.text, null));
  });

  ctx.state.priceEditController.addListener(() {
    ctx.dispatch(
        ToDoEditActionCreator.update(null, ctx.state.priceEditController.text));
  });
}

void _onDone(Action action, Context<ComEditState> ctx) {
  Navigator.of(ctx.context).pop<Commodity>(ctx.state.toDo);
}
