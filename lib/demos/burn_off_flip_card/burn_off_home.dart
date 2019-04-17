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
    return Scaffold(
      body: null,
      // TODO: the body of scffold is stacked with a series of widgets
    );
  }
}
