import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../../test_details_page/page.dart';
import 'action.dart';
import '../model.dart';

Effect<Commodity> buildEffect() {
  return combineEffects(<Object, Effect<Commodity>>{
    ComAction.onEdit: _onEdit,
  });
}

void _onEdit(Action action, Context<Commodity> ctx) {
  if (action.payload == ctx.state.id) {
    Navigator.of(ctx.context)
        .push<Commodity>(MaterialPageRoute<Commodity>(
        builder: (BuildContext buildCtx) =>
            ComEditPage().buildPage(ctx.state)))
        .then((Commodity com) {
      if (com != null) {
        ctx.dispatch(ComActionCreator.editAction(com));
      }
    });
  }
}

