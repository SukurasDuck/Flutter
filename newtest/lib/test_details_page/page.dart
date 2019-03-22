import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import '../test_page/model.dart';

class ComEditPage extends Page<ComEditState, Commodity> {
  ComEditPage()
      : super(
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
    middlewares: <Middleware<ComEditState>>[
      logMiddleware(tag: 'TodoEditPage'),
    ],
  );
}
