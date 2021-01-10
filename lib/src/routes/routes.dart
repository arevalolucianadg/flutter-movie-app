import 'package:flutter/material.dart';

import 'package:movie_app/src/pages/home_page.dart';

Map<String, WidgetBuilder> getRoutes() {

  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
  };
  
}
