import 'package:flutter/material.dart';
import 'package:movie_app/providers/movie_providers.dart';
import 'package:movie_app/widgets/expension_tile.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Provider.of<MovieProviders>(context, listen: false).getMovies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<MovieProviders>(context).movieList;

    return Scaffold(
      appBar: AppBar(title: Text("Movies")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            var movieData = movies[index];
            return ExpansionTileWidget(movieData: movieData, isShowReadMore: true,);
          },
        ),
      ),
    );
  }
}
