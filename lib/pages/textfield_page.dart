import 'package:flutter/material.dart';
import './icon_page.dart';
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 3,
      margin: EdgeInsets.all(0.0),
      child: Container(
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextDemo(),
            IconDemo(),

          ],
        ),
      ),
    ));
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height - 20,
        padding:
            EdgeInsets.only(left: 18.0, right: 18.0, bottom: 20.0, top: 2.0),
        child: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: '点击输入文本'),
          style: TextStyle(color: Colors.black, fontSize: 25.0),
          maxLines: 999,
          cursorColor: Colors.blue[500],
          cursorWidth: 2.0,
        ),
      ),
    );
  }
}
