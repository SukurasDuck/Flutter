import 'package:fish_redux/fish_redux.dart';
import '../model.dart';
import 'view.dart';
import 'effect.dart';
import 'reducer.dart';

class ComComponent extends Component<Commodity>{
  ComComponent():super(
    view:buildView,
    effect:buildEffect(),
    reducer:buildReducer(),
  );
}