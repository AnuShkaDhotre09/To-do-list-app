import 'package:flutter/material.dart';
import 'package:todo/screens/CaterorialScreen.dart';

import '../screens/HomeScreen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRogqPhyGzlgQzUGNMWyMCtnJg40wjpJg5mhA&usqp=CAU'
                ),
              ),
              accountName: Text('Ramsha Khan'),
                accountEmail: Text('nush0205@gmail.com'),
            decoration: BoxDecoration(color:Colors.blue ),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen(),)),
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategorialScreen(),),
            ),),



          ],
        ),
      ),
    );
  }
}
