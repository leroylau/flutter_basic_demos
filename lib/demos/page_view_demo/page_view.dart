import 'package:basic_demo/demos/page_view_demo/basic_page_view.dart';
import 'package:basic_demo/widgets/demo_box.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewDemo'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          DemoBox(
            icon: Icons.filter_1,
            title: 'Basic PageView',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BasicPageView(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
