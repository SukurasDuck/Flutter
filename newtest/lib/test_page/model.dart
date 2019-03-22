import 'package:fish_redux/fish_redux.dart';

//商品类
class Commodity extends Object implements Cloneable<Commodity> {
  Commodity({this.url, this.name, this.price}) {
    id ??= DateTime.now().toIso8601String();
  }

  String id;
  String url;
  String name;
  String price;

  @override
  Commodity clone() {
    return Commodity()
      ..id = id
      ..url = url
      ..name = name
      ..price = price;
  }

  @override
  String toString() {
    return 'ToDoState{id:$id ,url: $url, name: $name, price: $price}';
  }
}

//Title类
class Title extends Object {
  Title(this.id, this.name);

  int id;
  String name;
}
