import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/HomeScreen.dart';
class App extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(

      ),
    );
  }
}
