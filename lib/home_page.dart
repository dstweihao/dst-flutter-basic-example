import 'package:flutter/material.dart';
import 'package:flutter_basic_example/example/expansion_panel_list_page.dart';
import 'package:flutter_basic_example/example/expansiontitle_page.dart';
import 'package:flutter_basic_example/example/listview_page.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("首页")
      ),
      body: new Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.brown,
            child: Text("动态赋值列表",style: TextStyle(color: Colors.white),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return ListViewPage();

                }
              ));

            },

          ),
          RaisedButton(
            color: Colors.brown,
            child: Text(
              "展开闭合案例",style: TextStyle(color: Colors.white),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ExpansionTitlePage();

              }));

            },
          ),
          RaisedButton(
            color: Colors.brown,
            child: Text("闭合展开列表",style: TextStyle(color: Colors.white),),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context){
                  return ExpansionPanelListPage();
                }
              ));
            },
          )

        ],
      )
    );
  }
}

