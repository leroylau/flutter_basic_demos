import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Aliment aliment;

  const ItemCard({Key key, this.aliment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 25.0,
      child: Container(
        height: MediaQuery.of(context).size.height - 250,
        width: MediaQuery.of(context).size.width - 150,
      ),
    );
  }
}
