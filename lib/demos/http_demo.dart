import 'dart:async';

import 'package:basic_demo/utils/fetch_data_from_web.dart';
import 'package:basic_demo/widgets/circular_indicator.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  var _connectionStatus = 'unknown';
  Connectivity connectivity;

  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    super.initState();
    connectivity = Connectivity();
    subscription = connectivity.onConnectivityChanged.listen(
      (ConnectivityResult result) {
        _connectionStatus = result.toString();
        print(_connectionStatus);
        if (result == ConnectivityResult.mobile ||
            result == ConnectivityResult.wifi) {
          setState(() {});
        }
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connectivity'),
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (_, result) {
          if (result.hasData) {
            var data = result.data;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, int index) {
                return ListTile(
                  title: Text(data[index]['title']),
                );
              },
            );
          } else {
            return CircularIndicator();
          }
        },
      ),
    );
  }
}
