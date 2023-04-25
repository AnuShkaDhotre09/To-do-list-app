import 'package:flutter/material.dart';
import 'package:todo/src/app.dart';

class CategorialScreen extends StatefulWidget {
  const CategorialScreen({Key? key}) : super(key: key);

  @override
  State<CategorialScreen> createState() => _CategorialScreenState();
}

class _CategorialScreenState extends State<CategorialScreen> {
void showalertdialog(){
  showDialog(
    context: context,
    builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(
        "Add Task",
      ),
      content:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            autofocus: true,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Raleway",
            ),
          ),
          Padding(padding:EdgeInsets.only(
            top: 10.0
          )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){},
                  child: Text(
                      "ADD"
                  )),
              ElevatedButton(onPressed: (){},
                  child: Text(
                      "Delete"
                  ))
            ],
          )

        ],
      )
    )
  );
}
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
        floatingActionButton: FloatingActionButton(
          onPressed: showalertdialog,
          child: Icon(Icons.add,
              color:Colors.white),
        ),
        appBar: AppBar(
          title: Text(
            "My Daily Rountine",
            style:TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),

          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              myCard('Record A video'),
              myCard('Go to sleep'),
              myCard('Do yoga'),
              myCard('Make a Green tea'),

            ]
          ),
        ),

      );
    }
  }
