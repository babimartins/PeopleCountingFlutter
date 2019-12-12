import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Container de Pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode entrar!";

  void _changePeople(int delta){
    setState(() {
      _people += delta;
      if(_people<0) {
        _infoText = "Mundo invertido?";
      }
      else if(_people>=10) {
        _infoText = "Lotado!";
      }
      else {
        _infoText = "Pode entrar!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas: $_people", 
          style: TextStyle(color: Colors.white)
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                  onPressed: (){
                    _changePeople(1);
                  }, 
                  child: Text(
                    "+1", 
                    style: TextStyle(color: Colors.white, fontSize: 40.0)
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                  onPressed: (){
                    _changePeople(-1);
                  }, 
                  child: Text(
                    "-1", 
                    style: TextStyle(color: Colors.white, fontSize: 40.0)
                  ),
                ),
            ),
          ],
        ),
        Text("$_infoText", 
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0)),
      ],
    );
  }
}