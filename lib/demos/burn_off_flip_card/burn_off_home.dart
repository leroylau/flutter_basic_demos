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
      appBar: AppBar(
        title: Text('BurnOffHome'),
        elevation: 0.0,
      ),
    );
  }
}
