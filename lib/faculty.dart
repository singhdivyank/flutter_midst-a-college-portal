import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacultyFragment extends StatelessWidget{

  _launchURL() async {
    const url = 'https://webkiosk.thapar.edu/index.jsp?'
        '_ga=2.223821595.1832996874.1596467384-675121206.1576325197';
    if(await canLaunch(url)) await launch(url);
    else throw 'could not launch "$url"';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple,
          title: new Text("Faculty"),
          centerTitle: true,
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Employee Id',
                labelStyle: new TextStyle(fontStyle: FontStyle.normal),
                alignLabelWithHint: true
              ),
              onSubmitted: (String num) async{
                await showDialog<void>(
                  context: context,
              // ignore: non_constant_identifier_names
                builder: (BuildContext){
                    return AlertDialog(content: Text("Proceed"));
              });
            },
          ),
            new FlatButton(onPressed: _launchURL,
                child: new Text("Student Detail",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}