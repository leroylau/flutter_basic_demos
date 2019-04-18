import 'package:basic_demo/demos/burn_off_flip_card/background.dart';
import 'package:basic_demo/demos/burn_off_flip_card/item_card.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';

class BurnOffPage extends StatelessWidget {
  final Aliment aliment;

  const BurnOffPage({Key key, this.aliment}) : super(key: key);
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
      ],
    );
  }
}
