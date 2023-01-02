import 'package:flutter/material.dart';
import 'package:flutter_basic_example/example/expansion_panel_list_page.dart';
import 'package:flutter_basic_example/example/expansiontitle_page.dart';
import 'package:flutter_basic_example/example/listview_page.dart';
import 'package:flutter_basic_example/example/text_form_field_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool customColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("首页")),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: Text(
                  "动态赋值列表",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListViewPage();
                  }));
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: Text(
                  "展开闭合案例",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ExpansionTitlePage();
                  }));
                },
              ),
              ElevatedButton(

                child: Text(
                  "闭合展开列表",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ExpansionPanelListPage();
                  }));
                },
              ),
              ElevatedButton(

                child: Text(
                  "输入框选择器",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextFormFieldPage();
                  }));
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(foregroundColor: customColor?Color(0xFF30a261):Colors.blue),
                child: Text(
                  "自定义颜色的使用",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    customColor = !customColor;
                  });
                },
              )
            ],
          ),
        ));
  }
}

