import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'model.dart';
import 'action.dart';

Effect<ComList> buildEffect() {
  return combineEffects(<Object, Effect<ComList>>{
    Lifecycle.initState: _init,
  });
}


void _init(Action action,Context<ComList> ctx){
  final List<Commodity>initCom=<Commodity>[
    Commodity(
        url:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553072334105&di=d4c6dcf671dd2827d9df84156dc490d8&imgtype=0&src=http%3A%2F%2Fimg1.qunarzz.com%2Ftravel%2Fd6%2F1505%2Fb9%2F7a73bb08e8b387.jpg_r_680x427x95_ce3d9bcc.jpg",
        name:"测试1",
        price: '10'),
    Commodity(
        url: "https://img1.qunarzz.com/travel/d3/1512/c4/2943ebc09573f3f7.jpg_r_650x430x95_d3ee06fd.jpg",
        name:"测试2",
        price: '10'),
    Commodity(
        url:"https://b-ssl.duitang.com/uploads/blog/201404/19/20140419125358_5xmMZ.jpeg",
        name:"测试3",
        price: '10'),
  ];
  ctx.dispatch(ToDoEditaActionCreater.initListAction(initCom));
}