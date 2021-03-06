import 'package:flutter/material.dart';
import 'package:yc_dialog/YcToast.dart';
import 'package:yc_dialog_example/DialogList.dart';
import 'package:yc_dialog_example/GroupList.dart';
import 'package:yc_dialog/YcNormalDialog.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }

}

class AppState extends State<MyApp>{

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      navigatorKey: navigatorKey,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('小杨逗比弹窗工具库'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("1.自定义popupWindow弹窗"),
              onTap: (){
                print("自定义popupWindow弹窗");
                navigatorKey.currentState.push(
                    new MaterialPageRoute(builder: (context) {
                      return new GroupList();
                    }));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("2.普通的选择弹窗"),
              onTap: (){
                print("自定义popupWindow弹窗");
                navigatorKey.currentState.push(
                    new MaterialPageRoute(builder: (context) {
                      return new DialogList();
                    }));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("3.吐司工具，设置字体大小"),
              onTap: (){
                YcToast.showToast(
                  title: "逗比",
                  fontSize: 14,);
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("4.吐司工具，设置吐司圆角"),
              onTap: (){
                YcToast.showToast(
                    title: "逗比",
                    radius:25,
                    gravity: ToastGravity.CENTER);
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("5.吐司工具，吐司标题和内容"),
              onTap: (){
                YcToast.showToast(
                    title: "逗比",
                    desc: "这个是内容",
                    toastLength: Toast.LENGTH_SHORT,
                    fontSize: 14,
                    radius:20,
                    gravity: ToastGravity.CENTER);
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("6.吐司工具，设置系统吐司"),
              onTap: (){
                YcToast.showToast(
                    title: "逗比",
                    type: Type.SYSTEM,
                    toastLength: Toast.LENGTH_SHORT);
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("7.自定义吐司，设置背景和颜色"),
              onTap: (){
                YcToast.showToast(
                  title: "逗比",
                  desc: "这个是内容",
                  toastLength: Toast.LENGTH_SHORT,
                  fontSize: 14,
                  radius:20,
                  bgColor: Color(0xFFB71C1C),
                  textColor: Color(0xFF4A148C),
                  gravity: ToastGravity.CENTER,);
              },
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }

}