import 'package:basic_demo/demos/burn_off_flip_card/pages.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliments.dart';
import 'package:flutter/material.dart';

class BurnOffHome extends StatefulWidget {
  @override
  _BurnOffHomeState createState() => _BurnOffHomeState();
}

class _BurnOffHomeState extends State<BurnOffHome> {
  final aliments = Aliments.aliments;
  final _pageController = PageController();
  var currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page;
      });
    });
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: aliments.length,
        itemBuilder: (_, int index) {
          return BurnOffPage(
              aliment: aliments[index], pageIndex: currentPageValue.toInt());
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.home,
          color: aliments[currentPageValue.toInt()].background.colors[0],
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
      ),
    );
  }
}
