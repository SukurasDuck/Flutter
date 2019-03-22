import 'package:fish_redux/fish_redux.dart';
import '../state.dart';
import '../reducer.dart';
import '../model.dart';
import '../com_component/component.dart';


class ComListdapter extends DynamicFlowAdapter<ComList>{
  ComListdapter():super(
    pool:<String,Component<Object>>{
      'oneCom':ComComponent(),
    },
    connector:_ToDoListConnector(),
    reducer:buildReducer(),
  );
}

class _ToDoListConnector implements Connector<ComList, List<ItemBean>> {
  @override
  List<ItemBean> get(ComList list) {
    if (list.list?.isNotEmpty == true) {
      return list.list
          .map<ItemBean>((Commodity data) => ItemBean('oneCom', data))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(ComList list, List<ItemBean> toDos) {
    if (toDos?.isNotEmpty == true) {
      list.list = List<Commodity>.from(
          toDos.map<Commodity>((ItemBean bean) => bean.data).toList());
    } else {
      list.list = <Commodity>[];
    }
  }
}
