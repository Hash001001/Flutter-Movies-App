import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/expension_tile.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie Details")),
      body: Column(
        children: [
          ExpansionTileWidget(movieData: movie, isShowReadMore: false,),
          Text(
            "Movie Posters",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.Images.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Image.network(movie.Images[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
