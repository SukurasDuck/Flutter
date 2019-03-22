import 'package:fish_redux/fish_redux.dart';
import 'model.dart';

class ComList implements Cloneable<ComList>{
  List<Commodity> list;

  @override
  ComList clone() {
    return ComList()..list = list;
  }

}
ComList initState(Map<String, dynamic> args) {
  //just demo, do nothing here...
  return ComList();
}