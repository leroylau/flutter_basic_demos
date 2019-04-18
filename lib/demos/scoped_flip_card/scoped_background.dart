import 'package:basic_demo/models/scoped_flip_card/aliment_model.dart';
import 'package:basic_demo/models/scoped_flip_card/scoped_aliments.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedBackGround extends StatefulWidget {
  @override
  _ScopedBackGroundState createState() => _ScopedBackGroundState();
}

class _ScopedBackGroundState extends State<ScopedBackGround> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedAliments>(
      builder: (context, child, model) {
        int _selectedIndex =
            model.scopedAliments.indexWhere((item) => item.isSelected == true);
        AlimentModel selectedAliment = model.scopedAliments[_selectedIndex];

        return Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(gradient: selectedAliment.background),
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
          ],
        );
      },
    );
  }
}
