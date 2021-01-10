import 'package:flutter/material.dart';

import 'package:movie_app/src/widgets/card_swiper_widget.dart';
import '../theme/ui_const.dart';

class HomePage extends StatelessWidget {
  final _title = new TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
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
            children: <Widget>[
              _swiperCards(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _swiperCards() {
    return CardSwiper(movies: [1, 2, 3, 4, 5]);
  }
}
