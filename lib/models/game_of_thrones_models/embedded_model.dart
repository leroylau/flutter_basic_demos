import 'package:basic_demo/models/game_of_thrones_models/episodes_model.dart';

class Embedded {
  List<Episode> episodes;

  Embedded({this.episodes});

  Embedded.fromJson(Map<String, dynamic> json) {
    if (json['episodes'] != null) {
      episodes = List<Episode>();
      json['episodes'].forEach((v) {
        episodes.add(Episode.fromJson(v));
      });
    }
  }
}
