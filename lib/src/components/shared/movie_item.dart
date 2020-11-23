import 'package:flutter/material.dart';

import '../../theme/ui_const.dart';

class MovieItem extends StatelessWidget {

  final String urlImage;
  final String title;
  final String voteAverage;

  MovieItem(this.urlImage, this.title, this.voteAverage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: Color.fromRGBO(0, 0, 0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            height: 450,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage('https://image.tmdb.org/t/p/w500' + urlImage),
              ),
            ),
          ),
        ),
        SizedBox( height: 10 ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: <Widget> [
              Expanded(
                child: Text( title, style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
              ),
              Card(
                color: mainColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(voteAverage, style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height:20),
      ]
    );
  }
}