import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import '../test_page/model.dart';

class ComEditState implements Cloneable<ComEditState> {
  Commodity toDo;

  TextEditingController nameEditController;
  TextEditingController priceEditController;

  FocusNode focusNodeName;
  FocusNode focusNodeDesc;

  @override
  ComEditState clone() {
    return ComEditState()
      ..nameEditController = nameEditController
      ..priceEditController = priceEditController
      .. focusNodeName = focusNodeName
      .. focusNodeDesc = focusNodeDesc
      ..toDo = toDo;
  }
}

ComEditState initState(Commodity arg) {
  final ComEditState state = ComEditState();
  state.toDo = arg?.clone() ?? Commodity();
  state.nameEditController = TextEditingController(text: arg?.name);
  state.priceEditController = TextEditingController(text: arg?.price);
  state.focusNodeName = FocusNode();
  state.focusNodeDesc = FocusNode();
  return state;
}
