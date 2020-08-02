import 'package:flutter/material.dart';
import 'package:flutter_basic_example/modules/listview_item_bean.dart';
class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var myList = List<ListViewItem>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<30;i++){
      myList.add(new ListViewItem(name: "weihao${i}",age: 18,country: "China"));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("ListView"),

        ),
        body: new ListView.separated(
            itemCount:myList.length,
            itemBuilder: (context,index){
          return ItemView(myList[index]);
        },separatorBuilder: (BuildContext context,int index){
              return Divider(color: Colors.amber,);
        },),
      ),
    );
  }
  Widget ItemView(ListViewItem item) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("name: ${item.name}"),
        Text("age: ${item.age.toString()}"),
        Text("country: ${item.country}")
      ],
    ));

  }
}

