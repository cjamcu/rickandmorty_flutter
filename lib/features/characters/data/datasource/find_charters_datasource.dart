import 'dart:convert';

import 'package:ickandmorty_flutter/features/characters/data/models/charters_response.dart';
import 'package:http/http.dart' as http;

abstract class FindChartersDataSource {
  Future<List<CharterItemResponse>> find();
}

class FindChartersDataSourceImpl extends FindChartersDataSource {
  @override
  Future<List<CharterItemResponse>> find() async {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      return CharactersResponse.fromJson(jsonDecode(response.body)).results!;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load characters');
    }
  }
}
