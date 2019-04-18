import 'package:basic_demo/demos/burn_off_flip_card/pages.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliments.dart';
import 'package:flutter/material.dart';

class BurnOffHome extends StatefulWidget {
  @override
  _BurnOffHomeState createState() => _BurnOffHomeState();
}

class _BurnOffHomeState extends State<BurnOffHome> {
  final aliments = Aliments.aliments;
  final _pageController = PageController(
    initialPage: 0,
    keepPage: false,
    viewportFraction: 0.7,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: aliments.length,
        itemBuilder: (_, int index) {
          BurnOffPage(aliment: aliments[index]);
        },
      ),
    );
  }
}
