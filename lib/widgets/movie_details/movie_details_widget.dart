import 'package:flutter/material.dart';
import 'package:the_movie/widgets/movie_details/movie_details_main_info_widget.dart';
import 'package:the_movie/widgets/movie_details/movie_details_main_screen_cast_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final movieId;
  const MovieDetailsWidget({Key? key, required this.movieId})
      : super(key: key);

  @override
  State<MovieDetailsWidget> createState() =>
      _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Смертельная битва",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ColoredBox(
        color:Color.fromRGBO(23, 24,27, 1.0),
        child: ListView(
          children: [
            MovieDetailsMainInfoWidget(),
            SizedBox(height: 10),
            MovieDetailsMainScreenCastWidget(),
          ],
        ),
      ),
    );
  }
}
