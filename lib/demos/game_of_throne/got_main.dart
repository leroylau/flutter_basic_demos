import 'package:basic_demo/data/game_of_throne_data_provider.dart';
import 'package:basic_demo/models/game_of_thrones_models/game_of_throne_model.dart';
import 'package:flutter/material.dart';

const String rootUrl =
    "http://api.tvmaze.com/singlesearch/shows?q=game-of-thrones&embed=episodes";

class GOTHomePage extends StatefulWidget {
  @override
  _GOTHomePageState createState() => _GOTHomePageState();
}

class _GOTHomePageState extends State<GOTHomePage> {
  Future<GOT> got;

  @override
  void initState() {
    got = GOTDataProvider(searchUrl: rootUrl).fetchEpisodes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GameOfThrone'),
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: got,
        builder: (_, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return got == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Card(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Hero(
                            tag: snapshot.data.name,
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(snapshot.data.image.original),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            snapshot.data.name,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Runtime: ${snapshot.data.runtime.toString()} minutes.',
                            style:
                                TextStyle(color: Colors.blue, fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            snapshot.data.summary,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RaisedButton(
                            color: Colors.redAccent,
                            child: Text(
                              'All Episodes',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
          }
        },
      ),
    );
  }
}
