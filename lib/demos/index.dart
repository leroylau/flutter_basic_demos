import 'package:basic_demo/demos/web_socket_demo.dart';
import 'package:basic_demo/widgets/demo_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_socket_channel/io.dart';

List<DemoBox> demos(BuildContext context) {
  return [
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
        var channel = IOWebSocketChannel.connect("ws://echo.websocket.org");
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
    DemoBox(
      icon: Icons.delete,
      title: 'DismissibleList',
      onTap: () {
        Navigator.pushNamed(context, 'DismissItems');
      },
    ),
    DemoBox(
      icon: Icons.refresh,
      title: 'PullToRefresh',
      onTap: () {
        Navigator.pushNamed(context, 'pullToRefresh');
      },
    ),
    DemoBox(
      icon: Icons.games,
      title: 'GameOfThrone',
      onTap: () {
        Navigator.pushNamed(context, 'gotPage');
      },
    ),
    DemoBox(
      icon: Icons.directions,
      title: 'HeroWidget',
      onTap: () {
        Navigator.pushNamed(context, 'heroDemo');
      },
    ),
    DemoBox(
      icon: Icons.pageview,
      title: 'PageViewDemo',
      onTap: () {
        Navigator.pushNamed(context, 'pageView');
      },
    ),
    DemoBox(
      icon: Icons.flip,
      title: 'FlipCard',
      onTap: () {
        Navigator.pushNamed(context, 'flipCard');
      },
    ),
  ];
}
