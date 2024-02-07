import 'package:flutter/material.dart';
import 'package:the_movie/widgets/movie_list/movie_list_widget.dart';

class MaincreenWidget extends StatefulWidget {
  const MaincreenWidget({super.key});

  @override
  State<MaincreenWidget> createState() => _MaincreenWidgetState();
}

class _MaincreenWidgetState extends State<MaincreenWidget> {
  int _selectedTab=1;
  static const List<Widget> _widgetOptions=[
   
   MovieListWidget(),
 Text("фильмы"), 
  Text("сериалы"),
  ];
  void onSelectedTab(int index){
    setState(() {
       _selectedTab=index;
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
      body:Center(child:_widgetOptions[_selectedTab],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_selectedTab,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"новости"
          ),
           const BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label:"фильмы"
          ),
              const BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label:"сериалы"
          ),
        ],
        onTap:onSelectedTab,
        
      ),
    );
  }
}
