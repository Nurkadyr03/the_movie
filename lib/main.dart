import 'package:flutter/material.dart';
import 'package:the_movie/widgets/auth/auth_widget.dart';
import 'package:the_movie/widgets/main_screen/main_screen_widget.dart';
import 'package:the_movie/theme/app_colors.dart';
import 'package:the_movie/widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.mainDarkBlue),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: AppColors.mainDarkBlue,
        ),
      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MaincreenWidget(),
        '/main_screen/movie_details_widget':(context){
          final arguments=ModalRoute.of(context)?.settings.arguments;
          if(arguments is int){
            return MovieDetailsWidgetState(movieId:arguments);
          }
          return MovieDetailsWidgetState(movieId: 0);
        }
      },
      initialRoute: '/auth',
    );
  }
}
