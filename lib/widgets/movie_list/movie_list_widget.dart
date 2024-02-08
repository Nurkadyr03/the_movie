import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String imageName;

  final String time;
  final String discription;
  Movie({
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
 final  _movies = [
    Movie(
      title: "Смертельная битва",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "20-й век",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "любовь",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "матриса",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "мехмет",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "красная яблоко",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "оно",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "ты и я",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
    Movie(
      title: "за битва",
      imageName: "tita.jpeg",
      time: "April 3 , 2022",
      discription: "nvjnvjrvnrjtrinvtjrntrnvtnritvnrivtntr",
    ),
  ];
var _filterMovies=  <Movie>[];
  final _searchController=TextEditingController();
  
  void _searchMovies(){
    final query=_searchController.text;
   
     if(query.isNotEmpty){
   _filterMovies=_movies.where((Movie movie){
    return movie.title.toLowerCase().contains(query.toLowerCase());
   }).toList();
     
  }else{
      _filterMovies=_movies;
 }
  }
  @override
  void initState(){
    super.initState();
     _filterMovies=_movies;
    _searchController.addListener(_searchMovies);

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filterMovies.length,
          itemExtent: 163,
          itemBuilder: (context, index) {
            final movie = _filterMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: 
                  Stack(
                    children: [
                      
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black.withOpacity(0.2)),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                                      style:
                                          const TextStyle(fontWeight: FontWeight.bold)),
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
                          onTap: () {
                          },
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
