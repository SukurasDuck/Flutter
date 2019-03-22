import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'com_component/view.dart' as newWidget;
import 'state.dart';

Widget buildView(ComList state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: const Text('测试'),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
//            newWidget.buildView(state.list[0], dispatch,viewService),
//            newWidget.buildView(state.list[1], dispatch,viewService),
//            newWidget.buildView(state.list[2], dispatch,viewService),
          Expanded(
              child: ListView.builder(
                  itemBuilder: adapter.itemBuilder,
                  itemCount: adapter.itemCount)
          )
        ],
      ),
    ),
  );
}
