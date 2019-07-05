import 'package:flutter/material.dart';

class IconDemo extends StatefulWidget {
  @override
  _IconDemoState createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 10,
        ),
        ActionButton(
          title: '相机',
          icon: Icons.camera_enhance,
          image: null,
        ),
        ActionButton(
          title: '手写',
          icon: Icons.create,
          image: null,
        ),
        ActionButton(
          title: '对话',
          icon: Icons.record_voice_over,
          image: null,
        ),
        ActionButton(
          title: '语音',
          icon: Icons.keyboard_voice,
          image: null,
        ),
        Container(
          width: 10,
        ),
      ],
    );
  }
}

class ActionButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final Image image;

  const ActionButton({Key key, this.title, this.icon, this.image})
      : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
      child: Column(
        children: <Widget>[
          Icon(
            widget.icon,
            color: Color(0xff3f51b5),
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
