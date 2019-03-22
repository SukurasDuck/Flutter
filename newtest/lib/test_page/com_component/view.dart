import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';

import '../model.dart';

Widget buildView(
  Commodity state,
  Dispatch dispatch,
  ViewService viewService,
) {
  //当日午餐日文字样式
  TextStyle _lunchFontStyle = new TextStyle(
      fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black12);
  //建立竖向的展示组件
  Widget _verticalCard(Commodity com) => Container(
        padding: new EdgeInsets.only(left: 8, right: 8, top: 10),
        width: 180,
        child: new Column(
          children: <Widget>[
            new Image(
              width: 180,
              height: 120,
              image: new NetworkImage(com.url),
              fit: BoxFit.fill,
            ), //大图片
            new Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text(com.name), //名称
                new Text('¥  ${com.price}'), //价格
              ],
            ),
            new Row(
              //选项
              children: <Widget>[
                new Text(
                  '当日午餐',
                  style: _lunchFontStyle,
                ),
                new Text(
                  '次日午餐',
                  style: _lunchFontStyle,
                ),
                new Text(
                  '次日晚餐',
                  style: _lunchFontStyle,
                ),
              ],
            ),
            new ListTile(
              title: new Text('收藏至礼品库'),
            ), //收藏
            new Row(
              mainAxisSize: MainAxisSize.max,
              //兑换,送
              children: <Widget>[
                new Text('用礼金兑换'),
                new Text('送给TA'),
              ],
            ),
          ],
        ),
      );
  //横向
  Widget _transverseCard(Commodity com) => Container(
        padding: const EdgeInsets.only(
            top: 5.0, bottom: 15.0, left: 8.0, right: 8.0),
        child: new Row(
          children: <Widget>[
            Expanded(
              child: new Image(
                width: 180,
                height: 120,
                image: new NetworkImage(com.url),
                fit: BoxFit.fill,
              ), //大图片,
              flex: 1,
            ),
            Expanded(
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Text(com.name), //名称
                      new Text('¥  ${com.price}'), //价格
                    ],
                  ),
                  new Row(
                    //选项
                    children: <Widget>[
                      new Text(
                        '当日午餐',
                        style: _lunchFontStyle,
                      ),
                      new Text(
                        '次日午餐',
                        style: _lunchFontStyle,
                      ),
                      new Text(
                        '次日晚餐',
                        style: _lunchFontStyle,
                      ),
                    ],
                  ),
                  new Text('收藏至礼品库'),
                  new Row(
                    mainAxisSize: MainAxisSize.max,
                    //兑换,送
                    children: <Widget>[
                      new Text('用礼金兑换'),
                      new Text('送给TA'),
                    ],
                  ),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      );
  return Container(
    child: new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            //两个竖向
            Expanded(
              child: GestureDetector(
                child: _verticalCard(state),
                onTap: () {
                  dispatch(ComActionCreator.onEditAction(state.id));
                },
              ),
              flex: 1,
            ),
            Expanded(
              child: _verticalCard(state),
              flex: 1,
            ),
          ],
        ),
        _transverseCard(state),
      ],
    ),
  );
//  return Container(
//    child: Column(
//      children: <Widget>[
//        Text(state.name),
//        Text(state.url),
//        Text(state.price.toString()),
//      ],
//    ),
//  );
}
