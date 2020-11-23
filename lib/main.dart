import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';
import 'src/theme/ui_const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: 'Movie App',
    );
    
  }

}
