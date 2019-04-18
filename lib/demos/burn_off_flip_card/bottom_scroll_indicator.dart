import 'package:basic_demo/models/burn_off_flip_card/aliment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomIndicator extends StatefulWidget {
  final List<Aliment> aliments;
  final int pageIndex;

  const BottomIndicator({Key key, this.aliments, this.pageIndex})
      : super(key: key);
  @override
  _BottomIndicatorState createState() => _BottomIndicatorState();
}

class _BottomIndicatorState extends State<BottomIndicator> {
  final Color baseColor = Colors.grey;
  final Color selectedColor = Colors.white;

  List<Widget> indicators = [];
  int size;

  @override
  void initState() {
    //size = widget.aliments.length;
    size = 2;
    for (int i = 0; i < size; i++) {
      indicators.add(SingleIndicator(
        aliment: widget.aliments[i],
        color: baseColor,
      ));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var selectedIndicator = SingleIndicator(
        aliment: widget.aliments[widget.pageIndex], color: selectedColor);
    indicators
        .replaceRange(widget.pageIndex, widget.pageIndex, [selectedIndicator]);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: indicators,
        ),
      ),
    );
  }
}

class SingleIndicator extends StatelessWidget {
  final Aliment aliment;
  final Color color;

  const SingleIndicator({Key key, this.aliment, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color,
          ),
          width: 10.0,
          height: 2.0,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: SvgPicture.asset(
            aliment.bottomImage,
            color: color,
            width: 10.0,
            height: 10.0,
          ),
        ),
      ],
    );
  }
}
