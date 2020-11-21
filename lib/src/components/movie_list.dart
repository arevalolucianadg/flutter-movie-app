import 'package:flutter/material.dart';

import '../theme/ui_const.dart';

class MovieList extends StatefulWidget {

  @override
  createState() => MovieListState();

}

class MovieListState extends State<MovieList> {

  @override
  Widget build( BuildContext context ) {
    return Padding(
      child: Text('Lista de películas', style: TextStyle( backgroundColor: mainColor ) ),
      padding: EdgeInsets.all(32.0),
    );
  }

}