import 'package:flutter/material.dart';

class DemoBox extends StatelessWidget {
  final GestureTapCallback onTap;

  const DemoBox({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(width: 4.0),
        color: Colors.white.withOpacity(0.3),
      ),
      child: ListTile(
        leading: Icon(
          Icons.https,
          size: 40.0,
          color: Colors.black.withOpacity(0.8),
        ),
        title: Text(
          'Http Demo',
          style: TextStyle(color: Colors.black, fontSize: 32.0),
        ),
        onTap: onTap,
      ),
    );
  }
}
