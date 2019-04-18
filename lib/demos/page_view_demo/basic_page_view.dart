import 'package:flutter/material.dart';

class BasicPageView extends StatefulWidget {
  @override
  _BasicPageViewState createState() => _BasicPageViewState();
}

class _BasicPageViewState extends State<BasicPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Usage'),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
