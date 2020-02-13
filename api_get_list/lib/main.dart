import 'package:flutter/material.dart';
import 'package:api_get_list/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String output = "no data" ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API_LIST_GET"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              RaisedButton(child: Text("GET"),onPressed: (){
                User.getUser('2').then((users){
                  output = " ";
                  for(int i = 0; i < users.length; i++)
                  output= output + "\n" + users[i].name + "\n"  ;
                  setState(() {});
                }); 
              })
          ],)
        ),
      ),
    );
  }
}
