import 'dart:math';

import 'package:flutter/material.dart';

class PullRefreshDemo extends StatefulWidget {
  @override
  _PullRefreshDemoState createState() => _PullRefreshDemoState();
}

class _PullRefreshDemoState extends State<PullRefreshDemo> {
  final refreshKey = GlobalKey<RefreshIndicatorState>();
  List list = [];
  var random;

  // make a random list
  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      list = List.generate(random.nextInt(10), (i) => "Item $i");
    });

    return null;
  }

  @override
  void initState() {
    random = Random();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PullRefreshDemo'),
        elevation: 0.0,
      ),
      body: RefreshIndicator(
        key: refreshKey,
        child: Center(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(list[index]),
              );
            },
          ),
        ),
        onRefresh: refreshList,
      ),
    );
  }
}
