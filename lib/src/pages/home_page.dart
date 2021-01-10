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
        actions: <Widget> [
          IconButton(
            icon: Icon( Icons.search ),
            onPressed: () {},
          ),
        ],
        backgroundColor: mainDarkColor,
        centerTitle: false,
        title: Text('Movies'),
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget> [
              _swiperCards(),
            ],
          ),
        ),
      ),
    );
    
  }

  Widget _swiperCards() {
    return Container();
  }

}