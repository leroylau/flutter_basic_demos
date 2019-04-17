import 'package:basic_demo/demos/burn_off_flip_card/item_card.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:basic_demo/models/burn_off_flip_card/aliments.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BurnOffHome extends StatelessWidget {
  BurnOffHome() {
    SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp],
    );
  }

  final aliment = Aliments.aliments[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemCard(),
      // TODO: the body of scffold is stacked with a series of widgets
    );
  }
}
