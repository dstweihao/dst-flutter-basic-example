import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  @override
  _TextFormFieldPageState createState() => _TextFormFieldPageState();
}

class _TextFormFieldPageState extends State<TextFormFieldPage> {
  final TextEditingController _controller = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.text = "男";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框选择器"),
        centerTitle: true,
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: TextFormField(
          controller: _controller,
          readOnly: true,
          decoration: InputDecoration(labelText: "性别", hintText: "请选择性别"),
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Text("男"),
                        onTap: () {
                          setState(() {
                            _controller.text = "男";
                            Navigator.pop(context);
                          });
                        },
                      ),
                      ListTile(
                        title: Text("女"),
                        onTap: () {
                          setState(() {
                            _controller.text = "女";
                            Navigator.pop(context);
                          });
                        },
                      ),
                      ListTile(
                        title: Text("不告诉你"),
                        onTap: () {
                          setState(() {
                            _controller.text = "不告诉你";
                            Navigator.pop(context);
                          });
                        },
                      )
                    ],
                  );
                });
          },
        ),
      )),
    );
  }
}
