import 'dart:convert';

import 'package:basic_demo/models/game_of_thrones_models/game_of_throne_model.dart';
import 'package:http/http.dart' as http;

class GOTDataProvider {
  final String searchUrl;

  GOTDataProvider({this.searchUrl});

  Future<GOT> fetchEpisodes() async {
    var response = await http.get(this.searchUrl);

    var json = jsonDecode(response.body);

    return GOT.fromJson(json);
  }
}
