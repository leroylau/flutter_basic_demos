import 'package:basic_demo/demos/bottom_sheet.dart';
import 'package:basic_demo/demos/http_demo.dart';
import 'package:basic_demo/demos/login/login_page.dart';
import 'package:basic_demo/demos/web_socket_demo.dart';
import 'package:basic_demo/widgets/demo_box.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demos'),
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Demos'),
        'httpDemo': (context) => HttpDemo(),
        'bottomSheet': (context) => BottomSheetDemo(),
        'loginPage': (context) => LoginPageDemo(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DemoBox(
                  icon: FontAwesomeIcons.mobile,
                  title: 'Connectivity',
                  onTap: () {
                    Navigator.pushNamed(context, 'httpDemo');
                  },
                ),
                DemoBox(
                  icon: Icons.message,
                  title: 'WebSocket',
                  onTap: () {
                    var channel =
                        IOWebSocketChannel.connect("ws://echo.websocket.org");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => WebSocketDemo(
                              channel: channel,
                            ),
                      ),
                    );
                  },
                ),
                DemoBox(
                  icon: Icons.border_bottom,
                  title: 'BottomSheet',
                  onTap: () {
                    Navigator.pushNamed(context, 'bottomSheet');
                  },
                ),
                DemoBox(
                  icon: FontAwesomeIcons.lock,
                  title: 'LoginPage',
                  onTap: () {
                    Navigator.pushNamed(context, 'loginPage');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
