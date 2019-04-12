import 'package:flutter/material.dart';

class DemoBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final GestureTapCallback onTap;

  const DemoBox({Key key, this.onTap, this.title, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(width: 4.0),
              color: Colors.white.withOpacity(0.3),
            ),
            child: ListTile(
              leading: Icon(
                icon,
                size: 40.0,
                color: Colors.black.withOpacity(0.8),
              ),
              title: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 32.0),
              ),
              onTap: onTap,
            ),
          ),
          SizedBox(
            height: 4.0,
          )
        ],
      ),
    );
  }
}
