import 'package:basic_demo/demos/burn_off_flip_card/item_card.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliments.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BurnOffHome extends StatelessWidget {
  BurnOffHome() {
    SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp],
    );
  }

  @override
  Widget build(BuildContext context) {
    final aliment = Aliments.aliments[0];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: ItemCard(
            aliment: aliment,
            cardColor: aliment.background,
          ),
        ),
      ),
    );
  }
}
