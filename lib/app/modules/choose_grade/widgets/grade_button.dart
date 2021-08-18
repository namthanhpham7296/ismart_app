import 'package:flutter/material.dart';

class MyListItem extends StatefulWidget {
  @override
  _MyListItemState createState() => new _MyListItemState();
}

class _MyListItemState extends State<MyListItem> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Container(
          width: 80.0,
          child: RaisedButton(
            color: selectedIndex == index ? Colors.yellow : null,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.black87)),
            onPressed: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: new Text(
              "${index + 1}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  
}
