import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart';

class CustomPageViewBuilderDemo extends StatefulWidget {
  @override
  _CustomPageViewBuilderDemoState createState() =>
      _CustomPageViewBuilderDemoState();
}

class _CustomPageViewBuilderDemoState extends State<CustomPageViewBuilderDemo> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var currentPageValue = _pageController.page;

    return Scaffold(
      appBar: AppBar(
        title: Text('CustomPageViewBuilderDemo'),
        elevation: 0.0,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 10,
        itemBuilder: (_, index) {
          if (index == currentPageValue.floor()) {
          } else if (index == currentPageValue.floor() + 1) {
          } else {}
        },
      ),
    );
  }
}
