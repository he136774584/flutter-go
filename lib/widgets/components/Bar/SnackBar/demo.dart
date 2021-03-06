/**
  * Created with Android Studio.
  * User: ryan
  * Date: 2019/1/2
  * Time: 上午12:07
  * email: zhu.yan@alibaba-inc.com
  * tartget: SnackBar 的示例
  */


import 'package:flutter/material.dart';

/*
* SnackBar 默认的实例,无状态
* */
class SnackBarLessDefault extends StatelessWidget {
  final widget;
  final parent;

  const SnackBarLessDefault([this.widget, this.parent])
      : super();

  @override
  Widget build(BuildContext context) {
    // 当BuildContext在Scaffold之前时，调用Scaffold.of(context)会报错。这时可以通过Builder Widget来解决
    return new Center(
        child: new Column(
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                final snackBar = new SnackBar(
                  content: new Text('这是一个SnackBar, 右侧有SnackBarAction'),
                  backgroundColor:Colors.red,
                  action: new SnackBarAction( // 提示信息上添加一个撤消的按钮
                    textColor:Colors.black,
                    label: '撤消',
                    onPressed: () {
                      // Some code to undo the change!
                    },
                  ),
                  duration:Duration(minutes: 1),// 持续时间
                  //animation,
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: new Text('显示SnackBar'),
            ),
            new GestureDetector(
              onTap: () {
                final snackBar = new SnackBar(
                  content: new Text('右侧无SnackBarAction'),
                  backgroundColor:Colors.red,
                  duration:Duration(minutes: 1),// 持续时间
                  //animation,
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: new Text('显示无SnackBarAction的SnackBar'),
            ),
          ],
        )
    );
  }
}