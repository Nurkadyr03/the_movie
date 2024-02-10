import 'package:flutter/material.dart';

class Movie {
  final int id;
  final String title;
  final String imageName;

  final String time;
  final String discription;
  Movie({
    required this.id,
    required this.title,
    required this.imageName,
    required this.time,
    required this.discription,
  });
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
      id: 1,
      title: "Смертельная битва",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 2,
      title: "20-й век",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 3,
      title: "любовь",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 4,
      title: "матриса",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 5,
      title: "мехмет",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 6,
      title: "красная яблоко",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 7,
      title: "оно",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 8,
      title: "ты и я",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      id: 9,
      title: "tа битва",
      imageName: "assets/tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
  ];
  var _filterMovies = <Movie>[];
  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;

    if (query.isNotEmpty) {
      _filterMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filterMovies = _movies;
    }
  }

  @override
  void initState() {
    super.initState();
    _filterMovies = _movies;
    _searchController.addListener(_searchMovies);
  }
// у pushName есть аргумент  c его помощи можно передать любую инфу. сейчас я передал id.
  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      "/main_screen/movie_details_widget",
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          itemCount: _filterMovies.length,
          itemExtent: 163,
          itemBuilder: (context, index) {
            final movie = _filterMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 8,
                              color: Colors.grey,
                              offset: Offset(0, 2)),
                        ]),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(movie.imageName),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(movie.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 5),
                              Text(movie.time,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(color: Colors.grey)),
                              const SizedBox(height: 20),
                              Text(
                                movie.discription,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      onTap: () => _onMovieTap(index),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              label: const Text("поиск"),
              filled: true,
              fillColor: Colors.white.withOpacity(0.6),
              border: const OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
