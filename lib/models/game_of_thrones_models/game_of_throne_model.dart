import 'package:basic_demo/models/game_of_thrones_models/embedded_model.dart';
import 'package:basic_demo/models/game_of_thrones_models/episodes_model.dart';

class GOT {
  String name;
  int runtime;
  MyImage image;
  String summary;
  Embedded embedded;

  GOT({this.name, this.runtime, this.image, this.summary, this.embedded});

  GOT.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    runtime = json['runtime'];
    image = json['image'] != null ? MyImage.fromJson(json['image']) : null;
    summary = json['summary'];
    embedded =
        json['_embedded'] != null ? Embedded.fromJson(json['_embedded']) : null;
  }
}
