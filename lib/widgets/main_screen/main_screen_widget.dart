import 'package:flutter/material.dart';
import 'package:the_movie/widgets/movie_list/movie_list_widget.dart';

class MaincreenWidget extends StatefulWidget {
  const MaincreenWidget({super.key});

  @override
  State<MaincreenWidget> createState() => _MaincreenWidgetState();
}

class _MaincreenWidgetState extends State<MaincreenWidget> {
  int _selectedTab = 0;
  // static final List<Widget> _widgetOptions = [
  //   Text("Новости"),
  //   MovieListWidget(),
  //   Text("сериалы"),
  // ];
  void onSelectedTab(int index) {
    setState(() {
      _selectedTab = index;
      print(index);
      print(_selectedTab);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Movie DB", style: TextStyle(color: Colors.white)),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          // Center(
          //   child: _widgetOptions[_selectedTab],
          // ),
           Text("Новости"),
    MovieListWidget(),
    Text("сериалы"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "новости"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter), label: "фильмы"),
          const BottomNavigationBarItem(icon: Icon(Icons.tv), label: "сериалы"),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
