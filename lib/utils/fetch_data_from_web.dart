import 'dart:convert';

import 'package:http/http.dart' as http;

Future getData() async {
  http.Response response =
      await http.get("https://jsonplaceholder.typicode.com/posts/");
  if (response.statusCode == 200) {
    var result = jsonDecode(response.body);
    return result;
  }
}
