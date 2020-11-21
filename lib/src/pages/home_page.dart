import 'package:flutter/material.dart';

import '../components/movie_list.dart';

import '../theme/ui_const.dart';

class HomePage extends StatelessWidget {

  final _title = new TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  
  @override
  Widget build( context ) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainDarkColor,
        title: Text('FLUTT Movies'),
      ),
      backgroundColor: bgColor,
      body: Padding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Center(
              child: Text('Popular Movies', style: _title),
            ),
            Expanded(
              child: MovieList(),
            )
          ]
        ),
        padding: EdgeInsets.all(16.0),
      ),
    );
    
  }

}