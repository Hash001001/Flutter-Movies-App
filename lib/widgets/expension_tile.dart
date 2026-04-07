import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/movie_details.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({
    super.key,
    required this.movieData,
    required this.isShowReadMore,
  });

  final Movie movieData;
  final bool isShowReadMore;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(movieData.Title),
        subtitle: Text("Director: ${movieData.Director}"),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(movieData.Images[0]),
          // child: Text(movieData.Title[0])
        ),
        children: [
          Container(
            padding: EdgeInsets.only(left: 75),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: "Released: ",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "${movieData.Released}\n"),
                      TextSpan(
                        text: "Plot: ",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "${movieData.Plot}"),
                    ],
                  ),
                ),

                isShowReadMore ?TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetails(movie: movieData),
                        ),
                      );
                    },
                    child: Text("Read More."),
                  ): Text("")
                  
              ],
            ),
          ),
        ],
      ),
    );
  }
}
