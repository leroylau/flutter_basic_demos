import 'package:basic_demo/demos/burn_off_flip_card/bottom_scroll_indicator.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Aliment aliment;
  final int pageIndex;

  const BackGround({Key key, this.aliment, this.pageIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(gradient: aliment.background),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              'How To Burn Off',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Dosis',
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 40.0),
            child: BottomIndicator(pageIndex: pageIndex),
          ),
        ),
      ],
    );
  }
}
