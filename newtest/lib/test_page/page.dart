import 'package:fish_redux/fish_redux.dart';
import 'effect.dart';
import 'coms_adapter/adapter.dart';
import 'reducer.dart';
import 'state.dart';

import 'view.dart';

class ToDoListPage extends Page<ComList, Map<String, dynamic>> {
  ToDoListPage()
      : super(
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
    dependencies: Dependencies<ComList>(
        adapter: ComListdapter(),
      ),

  );
}
