import 'dart:convert';
import 'package:http/http.dart' as http;
import '../components/searchbar.dart';
import '../utils/keys.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=in&pageSize=100&apiKey=' +
            APIKey.key +
            '&q=' +
            CustomSearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
