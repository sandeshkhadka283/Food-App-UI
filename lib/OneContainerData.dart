import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  Setting(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: <Widget>[
            setttingWidget(Icons.favorite),
          ],
        ));
  }
}

class setttingWidget extends StatelessWidget {
  final IconData next;

  setttingWidget(this.next);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Icon(next),
          Text(
            "Network Setting",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
