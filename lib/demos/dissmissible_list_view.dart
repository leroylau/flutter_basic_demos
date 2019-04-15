import 'package:basic_demo/data/post_provider.dart';
import 'package:basic_demo/models/post_model.dart';
import 'package:flutter/material.dart';

class DissmissibleListItemDemo extends StatefulWidget {
  @override
  _DissmissibleListItemDemoState createState() =>
      _DissmissibleListItemDemoState();
}

class _DissmissibleListItemDemoState extends State<DissmissibleListItemDemo> {
  List<Post> items = [];

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    setState(() {
      items = posts;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('DissmissibleListView'),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, int index) {
              return Dismissible(
                key: Key(items[index].id.toString()),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                background: Container(
                  color: Colors.redAccent,
                ),
                child: _dismissibleItem(items[index]),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _dismissibleItem(Post post) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            post.title,
            style: TextStyle(fontSize: 22.0, color: Colors.deepOrangeAccent),
          ),
          subtitle: Text(
            post.body,
            style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
          ),
          leading: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 35.0,
                child: Text(
                  'User ${post.userId.toString()}',
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ],
          ),
          onTap: () => _onTapItem(context, post),
        ),
      ],
    );
  }

  void _onTapItem(BuildContext context, Post post) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(post.id.toString() + ' - ' + post.title),
    ));
  }
}
