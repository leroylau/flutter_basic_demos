import 'package:basic_demo/demos/scoped_flip_card/scoped_background.dart';
import 'package:basic_demo/demos/scoped_flip_card/scoped_item.dart';
import 'package:flutter/material.dart';

class ScopedBurnOffPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ScopedBackGround(),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: ScopedItemCard(),
          ),
        ),
      ],
    );
  }
}
