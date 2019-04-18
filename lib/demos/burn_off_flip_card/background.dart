import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';

class BackGround extends StatefulWidget {
  final Aliment aliment;

  const BackGround({Key key, this.aliment}) : super(key: key);

  @override
  _BackGroundState createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(gradient: widget.aliment.background),
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
  }
}
