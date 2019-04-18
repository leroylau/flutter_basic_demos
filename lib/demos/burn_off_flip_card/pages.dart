import 'package:basic_demo/demos/burn_off_flip_card/background.dart';
import 'package:basic_demo/demos/burn_off_flip_card/bottom_scroll_indicator.dart';
import 'package:basic_demo/demos/burn_off_flip_card/item_card.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';

class BurnOffPage extends StatelessWidget {
  final Aliment aliment;
  final PageController pageController;

  const BurnOffPage({Key key, this.aliment, this.pageController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackGround(aliment: aliment),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: ItemCard(
              aliment: aliment,
              cardColor: aliment.background,
            ),
          ),
        ),
        BottomIndicator(pageController: pageController),
      ],
    );
  }
}
