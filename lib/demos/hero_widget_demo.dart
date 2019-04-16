import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HeroDemoPageTwo(),
            ));
          },
          child: Hero(
            tag: 'Demotag',
            child: Icon(
              Icons.add,
              size: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}

class HeroDemoPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroDemoPageTwo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HeroDemo(),
              ));
            },
            child: Hero(
              tag: 'Demotag',
              child: Icon(
                Icons.add,
                size: 150.0,
              ),
              placeholderBuilder: (context, widget) {
                return Container(
                  height: 150.0,
                  width: 150.0,
                  child: CircularProgressIndicator(),
                );
              },
              flightShuttleBuilder: (flightContext, animation, direction,
                  fromContext, toContext) {
                return Icon(
                  FontAwesomeIcons.rocket,
                  size: 150.0,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
