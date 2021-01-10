import 'package:flutter/material.dart';

import 'package:movie_app/src/routes/routes.dart';

import 'package:movie_app/src/pages/home_page.dart';
import 'package:movie_app/src/theme/ui_const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      initialRoute: '/',
      routes: getRoutes(),
    );
    
  }

}
