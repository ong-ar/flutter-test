import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({this.textInput});
  final Widget textInput;
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  bool checkBoxValue = false;
  String actionText = "Default";
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      title: "MySampleApplication",
      home: new Scaffold(
          appBar: new AppBar(
              title: new Text("Hello Flutter App"),
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(Icons.add_comment),
                    onPressed: () {
                      setState(() {
                        actionText = "New Text";
                      });
                    }),
                new IconButton(
                    icon: new Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        actionText = "Default";
                      });
                    }),
              ]),
          body: new Center(
            child: new Column(
              children: <Widget>[
                widget.textInput,
                new Text(actionText),
                new Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        checkBoxValue = newValue;
                      });
                    })
              ],
            ),
          )),
    );
  }
}

void main() {
  runApp(MyApp(textInput: new Text("Provided By Main")));
}
