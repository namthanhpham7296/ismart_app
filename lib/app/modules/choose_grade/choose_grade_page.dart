import 'package:flutter/material.dart';

class ChooseGradePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              Text(
                "Have you studied with us before?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [MyListItem(index)],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyListItem extends StatefulWidget {
  final int index;

  MyListItem(this.index);

  @override
  _MyListItemState createState() => new _MyListItemState();
}

class _MyListItemState extends State<MyListItem> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = false;
  }

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        if (isSelected) {
          setState(() {
            isSelected = false;
          });
        } else {
          setState(() {
            isSelected = true;
          });
        }
      },
      child: new Text("${widget.index}"),
    );
  }
}
