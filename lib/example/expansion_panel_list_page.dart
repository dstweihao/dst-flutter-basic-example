import 'package:flutter/material.dart';

class ExpansionPanelListPage extends StatefulWidget {
  @override
  _ExpansionPanelListPageState createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<ExpansionPanelListPage> {
  int selectedIndex = -1;
  late List<int> dataList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // dataList = new List();

    for (int i = 0; i < 20; i++) {
      dataList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("闭合展开列表"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            children: dataList.map((index) {
              return new ExpansionPanelRadio(
                value: index,
                headerBuilder: (context, isExpanded) {
                  return new ListTile(
                    title: new Text("列表-- $index"),
                  );
                },
                body: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"),
                          Text("BBBBBBBBBBBBBBBBB"),
                          Text("CCCCCCCC")
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
            initialOpenPanelValue: selectedIndex,
            expansionCallback: (index, bol) {
              setState(() {
                if (selectedIndex == index) {
                  index = -1;
                }
                selectedIndex = index;
              });
            },
          ),
        ));
  }
}
