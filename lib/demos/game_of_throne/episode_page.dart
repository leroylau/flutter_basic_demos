import 'package:basic_demo/models/game_of_thrones_models/episodes_model.dart';
import 'package:basic_demo/models/game_of_thrones_models/game_of_throne_model.dart';
import 'package:flutter/material.dart';

class EpisodePage extends StatelessWidget {
  final GOT got;
  EpisodePage({Key key, this.got}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Episode> episodes = got.embedded.episodes;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Hero(
              tag: got.name,
              child: CircleAvatar(
                backgroundImage: NetworkImage(got.image.medium),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('All Episodes')
          ],
        ),
        elevation: 0.0,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.0),
        itemCount: episodes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showSummary(context, episodes[index]);
            },
            child: Card(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    episodes[index].image.original,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.2),
                    colorBlendMode: BlendMode.darken,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          episodes[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 0.0,
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '${episodes[index].season.toString()}-${episodes[index].number.toString()}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showSummary(BuildContext context, Episode episode) {
    showDialog(
      context: context,
      builder: (context) => Center(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    episode.summary,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
