import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        child: Container(
          margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                aliment.image,
                width: 70.0,
                height: 70.0,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      aliment.name,
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Qwigley',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        '• ' + aliment.subtitle + ' •',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontFamily: 'Dosis',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
