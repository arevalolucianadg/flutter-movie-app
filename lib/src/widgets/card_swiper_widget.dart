import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movie_app/src/models/movie_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Movie> movies;
  CardSwiper({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              image: NetworkImage(movies[index].getMoviePoster()),
              placeholder: AssetImage('assets/images/loading.gif'),
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: movies.length,
        itemHeight: _screenSize.height * 0.6,
        itemWidth: _screenSize.width * 0.45,
        viewportFraction: 0.8,
        scale: 0.85,
      ),
      height: _screenSize.height * 0.6,
      padding: EdgeInsets.only(top: 20.0),
    );
  }
}
