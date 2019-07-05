import 'package:flutter/material.dart';
import '../consts/const_page.dart';

class RecordingPage extends StatefulWidget {
  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  List<Translate> _items = [
    Translate('11111111111111', '22222222222222', false),
    Translate('33333333333333333', '4444444444444', true)
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _displayList(index);
        },
      ),
    );
  }

  Widget _displayList(int index) {
    return Container(
      padding: EdgeInsets.only(left: 2.0, bottom: 2.0, right: 2.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0))),
        margin: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[_Flexible(index), _collection(index)],
          ),
        ),
      ),
    );
  }

  Widget _Flexible(int index) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            _items[index].title,
            style: Theme.of(context).textTheme.title,

            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(_items[index].subTitle,
              style: TextStyle(color: Colors.grey[600],fontSize: 18.0)),
        ],
      ),
    );
  }

  Widget _collection(int index) {
    return IconButton(
      onPressed: (){},
      icon: Icon(
        _items[index].isCollection ? Icons.star : Icons.star_border,
        size: 25.0,
        color:  _items[index].isCollection ? Colors.yellow[600] : Colors.grey,
      ),
    );
  }
}
