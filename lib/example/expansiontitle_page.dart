import 'package:flutter/material.dart';
class ExpansionTitlePage extends StatefulWidget {
  @override
  _ExpansionTitlePageState createState() => _ExpansionTitlePageState();
}

class _ExpansionTitlePageState extends State<ExpansionTitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ExpansionTile"),

      ),
      body: ExpansionTile(
        title: Text("基本信息",style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.all_inclusive,color: Colors.black,),
        backgroundColor: Colors.black12,
        children: <Widget>[
          ListTile(
            title: Text("list title"),
            subtitle: Text("subtitle"),

          )
        ],
        initiallyExpanded: true,
      ),
    );
  }
}

