import 'dart:convert';

import 'package:http/http.dart' as http;

class Connection {
  Future<Map> getData() async {
    var data;
    var decoded;
    data = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=toyota&from=2021-08-18&sortBy=publishedAt&apiKey=5d493ee7c4fc413c869879c09037c08c"));

    if (data.statusCode == 200) {
      decoded = await jsonDecode(data.body);
    }
    print(decoded);
    return decoded;
  }
}
