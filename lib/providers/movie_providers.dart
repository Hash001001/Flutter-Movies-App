import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/movie_parser.dart';

class MovieProviders extends ChangeNotifier {
  List<Movie> _moviewList = [];

  List<Movie> get movieList => _moviewList;

  Future<void> getMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(
        context,
      ).loadString("assets/data/films.json");

      List<Movie> movies = MovieParser.parseMovie(jsonString);
      _moviewList = movies;

      notifyListeners();
    } catch (e) {
      print("Error loading movies : $e");
    }
  }
}
