import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Aliment aliment;

  const BackGround({Key key, this.aliment}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(gradient: aliment.background),
      ),
    );
  }
}
