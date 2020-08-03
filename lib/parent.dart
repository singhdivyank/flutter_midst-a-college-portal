import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ParentFragment extends StatelessWidget{

  _launchURl() async {
    const url = 'https://eps.eshiksha.net/DirectFeesv3/ThaparAdmission';
    if(await canLaunch(url)) await launch(url);
    else throw 'Could not launch "$url"';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepOrange,
          title: new Text("Parents"),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Admission Number',
                labelStyle: new TextStyle(fontStyle: FontStyle.normal),
                alignLabelWithHint: true
            ),
            onSubmitted: (String num) async {
              await showDialog<void>(
                  context: context,
                  // ignore: non_constant_identifier_names
                  builder : (BuildContext){
                    return AlertDialog(content: Text('Proceed for Divyank Singh'));
                  }
              );
            },
          ),
          new FlatButton(onPressed: _launchURl,
              child: new Text("Pay Fees",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}