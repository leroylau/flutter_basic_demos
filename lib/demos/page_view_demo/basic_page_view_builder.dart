import 'package:flutter/material.dart';

class BasicPageViewBuilder extends StatefulWidget {
  @override
  _BasicPageViewBuilderState createState() => _BasicPageViewBuilderState();
}

class _BasicPageViewBuilderState extends State<BasicPageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BasicPageViewBuilder'),
        elevation: 0.0,
      ),
      body: PageView.builder(
        physics: BouncingScrollPhysics(),
        itemCount:
            null, // set to null or not set will generate infinite list of pages
        itemBuilder: (_, index) {
          return Container(
            color: index % 2 == 0 ? Colors.pink : Colors.cyan,
          );
        },
      ),
    );
  }
}
