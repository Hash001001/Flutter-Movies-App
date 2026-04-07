import 'dart:convert';

import 'package:movie_app/models/movie.dart';

class MovieParser {

  static List<Movie> parseMovie(String jsonString){

    final List<dynamic> parsedJson =  json.decode(jsonString);

    return parsedJson.map((jsonItem) => Movie.fromJson(jsonItem as Map<String, dynamic>))
    .toList();

  }


}
