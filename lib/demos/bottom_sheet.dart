import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomsheetCallBack;

  @override
  void initState() {
    _showPersBottomsheetCallBack = _showBottomSheet;
    super.initState();
  }

  void _showBottomSheet() {
    setState(() {
      _showPersBottomsheetCallBack = null;
    });
    _scaffoldKey.currentState
        // Shows a persistent material design bottom sheet in the nearest [Scaffold].
        .showBottomSheet(
          (context) {
            return Container(
              height: 300.0,
              color: Colors.greenAccent,
              child: Center(
                child: Text('Hi BttomSheet'),
              ),
            );
          },
        )
        // return a future when completes after feature is no longer visible
        .closed
        // Registers a function to be called when this future completes.
        .whenComplete(() {
          if (mounted) {
            setState(() {
              // set the state back to persist
              _showPersBottomsheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  void _showModalSheet() {
    // Shows a modal material design bottom sheet.
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text('Hi ModalSheet'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Persist'),
                onPressed: _showPersBottomsheetCallBack,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              RaisedButton(
                child: Text('Modal'),
                onPressed: _showModalSheet,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
