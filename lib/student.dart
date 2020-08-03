import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StudentFragment extends StatelessWidget{

  _launchURl() async {
    const fqdn = 'http://www.thapar.edu/images/CSSyllabus/Group%20B%20COE.pdf';
    if(await canLaunch(fqdn)) await launch(fqdn);
    else throw 'Could not launch "$fqdn"';
  }

  _launchU() async {
    const url = 'http://www.thapar.edu/faculties/category/departments/'
        'computer-science-engineering-dera-bassi-campus-1';
    if(await canLaunch(url)) await launch(url);
    else throw 'Could not launch "$url"';
  }

  _launch() async {
    const u = 'http://library.thapar.edu/';
    if(await canLaunch(u)) await launch(u);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.cyan,
          title: new Text("Students"),
        centerTitle: true,
      ),
        body: new Column(
          children: <Widget>[
            new TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Roll Number",
                labelStyle: new TextStyle(fontStyle: FontStyle.normal),
                alignLabelWithHint: true
            ),
              onSubmitted: (String num) async {
                await showDialog<void>(
                  context: context,
                  // ignore: non_constant_identifier_names
                  builder: (BuildContext){
                    return AlertDialog(content: Text('Proceed Divyank Singh'));
                  }
                );
              },
          ),
            new FlatButton(onPressed: _launchURl,
                child: new Text("Curriculum Details",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center)),
            new FlatButton(onPressed: _launchU,
                child: new Text("Faculty Details",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center)),
            new FlatButton(onPressed: _launch,
                child: new Text("Book Status",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center))
        ],
      ),
    );
  }
}