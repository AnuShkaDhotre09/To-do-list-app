import 'package:flutter/material.dart';
import 'package:todo/helpers/drawer_navigation.dart';
class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget myCard(String task){

    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
          horizontal: 10,vertical: 5.0
      ),
      child: Container(
          padding: EdgeInsets.all(5.0),
          child:ListTile(
            title:Text(
              "$task",
              style: TextStyle(fontSize: 18.0,fontFamily: "Raleway",),
            ),
            onLongPress: (){
              print("Should Get Deleted");
            },
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
title: Text('Notes'),

      ),

      drawer: DrawerNavigation(),


    body: SingleChildScrollView(
      child: Column(
          children: [
            myCard('My Daily Routine'),


          ]
      ),
    ),
    );
  }
}
