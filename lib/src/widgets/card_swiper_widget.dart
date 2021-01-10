import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> movies;

  CardSwiper({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    print(_screenSize.width);

    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              "https://via.placeholder.com/200x450",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: movies.length,
        itemHeight: _screenSize.height * 0.55,
        itemWidth: _screenSize.width * 0.5,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
      height: _screenSize.height * 0.55,
      padding: EdgeInsets.only(top: 20.0),
    );
  }
}
