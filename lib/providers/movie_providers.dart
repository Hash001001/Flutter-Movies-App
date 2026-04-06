import 'package:flutter/material.dart';

class MovieProviders  extends ChangeNotifier{

final _moviewList = [
"Movie 1",
"Movie 2", 
"Movie 3",
"Movie 4",
"Movie 5",
"Movie 6",
];

List<String> get movieList => _moviewList;


}