
import 'package:flutter/material.dart';
import 'package:movie_app/providers/movie_providers.dart';
import 'package:movie_app/utils/movie_parser.dart';
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
      appBar: AppBar(
        title:  Text("Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index){
            return ListTile(
              title: Text(movies[index].Title),
              subtitle: Text("Sub"),
              leading: CircleAvatar(
                child: Text(movies[index].Title[0]),
              ),
              trailing: Icon(Icons.arrow_drop_down),
            
            );
          }),
        ),
      ),
    );
  }
}
