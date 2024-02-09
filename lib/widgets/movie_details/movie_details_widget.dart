import 'package:flutter/material.dart';
import 'package:the_movie/widgets/movie_details/movie_details_main_info_widget.dart';

class MovieDetailsWidgetState extends StatefulWidget {
  final movieId;
  const MovieDetailsWidgetState({Key? key, required this.movieId})
      : super(key: key);

  @override
  State<MovieDetailsWidgetState> createState() =>
      _MovieDetailsWidgetStateState();
}

class _MovieDetailsWidgetStateState extends State<MovieDetailsWidgetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Смертельная битва",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          MovieDetailsMainInfoWidget(),
        ],
      ),
    );
  }
}
