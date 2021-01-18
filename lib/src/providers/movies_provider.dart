import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:movie_app/src/models/movie_model.dart';

class MoviesProvider {
  String _apiKey = '2dbae37ff506d6ae60cb9549e0678f91';
  String _url = 'api.themoviedb.org';

  Future<List<Movie>> getPopularMovies() async {
    final url = Uri.https(_url, '3/movie/popular', {
      'api_key': _apiKey,
    });

    final resp = await http.get(url);
    final data = await json.decode(resp.body);

    final movies = new Movies.fromJsonList(data['results']);

    return movies.items;
  }
}
