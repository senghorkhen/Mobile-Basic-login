
import 'package:flutter/material.dart';

void main() => runApp(Homework());
class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  // String username
  String _username = "";

  // function getUsername
  String getUsername(String username){
    setState(() {
     _username = username; 
    });
    return _username;
  }

  // String password
  String _password = "";

    // function getUsername
  String getPassword(String password){
    setState(() {
     _password = password; 
    });
    return _password;
  }

  // bool checked
  bool checked = false;

  // checkbox
  void change(bool value){
    setState(() {
     checked = value; 
    });
  }

  // result
  String _result = "";

  // getResults
  void getResults(){
    setState(() {
     if(checked){
       _result = "@Username: " + _username + "." + "@password: " + _password;
     }else{
       _result ="You are not yet agree";
     }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
              child: TextField(
                onChanged: (String username){
                  getUsername(username);
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: ("Username"),
                ),
              ),
            ),
             Container(
              padding: EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
              child: TextField(
                onChanged: (String password){
                  getPassword(password);
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: ("Password"),
                ),
                 obscureText: true, 
              ),
            ),

             Container(
              padding: EdgeInsets.only(left: 70.0),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: checked,
                    onChanged: (bool value){
                      change(value);
                    }
                  ),
                  Container(
                    child: Text("Are you agree?"),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 60.0, right: 10.0, top: 20.0),
              child: SizedBox(
                width: 290,
                child: RaisedButton(
                  onPressed: () => getResults(),
                  color: Colors.blue,
                  child: Text("Login", style: TextStyle(fontSize: 20.0, color: Colors.white),),
                ),
              ),
            ),

            // card
            Container(
              padding: EdgeInsets.only(left: 60.0, right: 10.0, top: 20.0),
              child: SizedBox(
                width: 290,
                height: 50.0,
                child: Card(
                  child: Text(
                    _result,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}