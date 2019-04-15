class Episode {
  int id;
  String url;
  String name;
  int season;
  int number;
  String airdate;
  String airtime;
  String airstamp;
  int runtime;
  MyImage image;
  String summary;

  Episode(
      {this.id,
      this.url,
      this.name,
      this.season,
      this.number,
      this.airdate,
      this.airtime,
      this.airstamp,
      this.runtime,
      this.image,
      this.summary});

  Episode.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    season = json['season'];
    number = json['number'];
    airdate = json['airdate'];
    airtime = json['airtime'];
    airstamp = json['airstamp'];
    runtime = json['runtime'];
    image = json['image'] != null ? json['image'].fromJson() : null;
    summary = json['summary'];
  }
}

class MyImage {
  String medium;
  String original;

  MyImage({this.medium, this.original});

  MyImage.fromjson(Map<String, dynamic> json) {
    medium = json['medium'];
    original = json['original'];
  }
}
