import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'model.dart';

enum ToDoEditaAction{initList,add}

class ToDoEditaActionCreater{
//  static Action add(Commodity com) {
//    return Action(
//      ToDoEditaAction.add,payload:com
//    );
//  }
  static Action initListAction(List<Commodity> list) {
    return Action(ToDoEditaAction.initList, payload: list);
  }

}