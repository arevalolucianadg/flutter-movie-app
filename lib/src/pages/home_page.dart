import 'package:flutter/material.dart';

import '../components/shared/movie_item.dart';
import '../theme/ui_const.dart';

class HomePage extends StatelessWidget {

  final _title = new TextStyle(
    color: Colors.white,
    fontSize: 24,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: <Widget> [
                Center(
                  child: Text('Popular Series', style: _title),
                ),
                Container(
                  height: 700,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ListView(
                      children: <Widget>[
                        MovieItem('/wHa6KOJAoNTFLFtp7wguUJKSnju.jpg', 'The Flash', '7.6'),
                        MovieItem('/sWgBv7LV2PRoQgkxwlibdGXKz1S.jpg', 'The Mandalorian', '8.5'),
                        MovieItem('/7WTsnHkbA0FaG6R9twfFde0I9hl.jpg', 'Sherlock', '8.4'),
                        SizedBox(height:40),
                      ],
                    )
                  ),
                  )
              ]
            ),
          ),
        ),
      ),
    );
    
  }

}