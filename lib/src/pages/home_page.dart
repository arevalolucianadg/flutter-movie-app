import 'package:flutter/material.dart';

import 'package:movie_app/src/providers/movies_provider.dart';
import 'package:movie_app/src/widgets/card_swiper_widget.dart';
import '../theme/ui_const.dart';

class HomePage extends StatelessWidget {
  final _title = new TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  final moviesProvider = new MoviesProvider();

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
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: Text('Movies'),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32.0, 0, 8.0),
                child: Text(
                  'Popular movies',
                  style: _title,
                ),
              ),
              _swiperCards(),
              _homeFooter()
            ],
          ),
        ),
      ),
    );
  }

  Widget _swiperCards() {
    return FutureBuilder(
        future: moviesProvider.getPopularMovies(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return CardSwiper(movies: snapshot.data);
          } else {
            return Container(
                height: 450, child: Center(child: CircularProgressIndicator()));
          }
        });
  }

  Widget _homeFooter() {
    moviesProvider.getTopRatedMovies();

    return Container(
      child: Column(
        children: <Widget>[
          Text('Top Rated movies', style: _title),
          FutureBuilder(
            future: moviesProvider.getTopRatedMovies(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                snapshot.data.forEach((p) {
                  print(p.title);
                });
              } else {
                return Container(
                    height: 450,
                    child: Center(child: CircularProgressIndicator()));
              }
            },
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(0, 32.0, 0, 8.0),
      width: double.infinity,
    );
  }
}
