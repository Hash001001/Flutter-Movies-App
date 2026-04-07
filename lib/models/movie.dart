class Movie {
  final String Title;
  final String Year;
  final String Rated;
  final String Released;
  final String Runtime;
  final String Genre;
  final String Director;
  final String Writer;
  final String Actors;
  final String Plot;
  final String Language;
  final String Country;
  final String Awards;
  final String Poster;
  final String Metascore;
  final String imdbRating;
  final String imdbVotes;
  final String imdbID;
  final String Type;
  final String Response;
  final List<String> Images;

  Movie({
    required this.Title,
    required this.Year,
    required this.Rated,
    required this.Released,
    required this.Runtime,
    required this.Genre,
    required this.Director,
    required this.Writer,
    required this.Actors,
    required this.Plot,
    required this.Language,
    required this.Country,
    required this.Awards,
    required this.Poster,
    required this.Metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.Type,
    required this.Response,
    required this.Images,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    Title: json['Title'] as String,
    Year: json['Year'] as String,
    Rated: json['Rated'] as String,
    Released: json['Released'] as String,
    Runtime: json['Runtime'] as String,
    Genre: json['Genre'] as String,
    Director: json['Director'] as String,
    Writer: json['Writer'] as String,
    Actors: json['Actors'] as String,
    Plot: json['Plot'] as String,
    Language: json['Language'] as String,
    Country: json['Country'] as String,
    Awards: json['Awards'] as String,
    Poster: json['Poster'] as String,
    Metascore: json['Metascore'] as String,
    imdbRating: json['imdbRating'] as String,
    imdbVotes: json['imdbVotes'] as String,
    imdbID: json['imdbID'] as String,
    Type: json['Type'] as String,
    Response: json['Response'] as String,
    Images: List<String>.from(json['Images']),
  );

  Map<String, dynamic> toJson() => {
    'Title': Title,
    'Year': Year,
    'Rated': Rated,
    'Released': Released,
    'Runtime': Runtime,
    'Genre': Genre,
    'Director': Director,
    'Writer': Writer,
    'Actors': Actors,
    'Plot': Plot,
    'Language': Language,
    'Country': Country,
    'Awards': Awards,
    'Poster': Poster,
    'Metascore': Metascore,
    'imdbRating': imdbRating,
    'imdbVotes': imdbVotes,
    'imdbID': imdbID,
    'Type': Type,
    'Response': Response,
    'Images': Images,
  };
}
