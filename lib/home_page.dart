import 'package:flutter/material.dart';
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
            child: Text("ListView"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return ListViewPage();

                }
              ));

            },

          )

        ],
      )
    );
  }
}

