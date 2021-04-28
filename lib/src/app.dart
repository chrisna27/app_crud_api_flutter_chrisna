import 'package:flutter/material.dart';
import 'package:api_crud_flutter/src/formadd/form_add_screen.dart';
import 'package:api_crud_flutter/src/home/home_screen.dart';
import 'package:api_crud_flutter/MyProfil.dart';

void main() {
  runApp(
    new MaterialApp(

      routes: <String, WidgetBuilder>{

        'profilku' : (BuildContext context) => new MyProfil(),

      },
    ),
  );
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreenAccent,
        accentColor: Colors.greenAccent,
      ),
      home: Scaffold(

        key: _scaffoldState,
        appBar: new AppBar(
          title: new Text('Crud API',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold, fontSize: 30),),
          leading:  new  Icon(Icons.menu,color:Colors.white),
          centerTitle:  true,
          backgroundColor:Colors.black,shadowColor:Colors.grey,
          actions:  <Widget>[
            IconButton(
              icon:  Icon(Icons.person_outline,color:Colors.white),
              onPressed: (){
                Navigator.pushNamed(context, 'profilku');
              },
            )
          ],
        ),

        body: HomeScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormAddScreen()),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
