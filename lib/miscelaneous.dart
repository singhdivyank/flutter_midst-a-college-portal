import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MiscellaneousFragment extends StatelessWidget{

  _launchURl() async{
    const url = 'https://admissions.thapar.edu';
    if(await canLaunch(url)) await launch(url);
    else throw 'could not launch "$url"';
  }

  _launchURL() async {
    const u = 'http://www.thapar.edu/placements';
    if(await canLaunch(u)) await launch(u);
    else throw 'could not launch "$u"';
  }

  _launchFun() async {
    const pqdn = 'http://lmtsm.thapar.edu/index.php/a-z-directory/'
        '17-rss-feed/35-infrastructure';
    if(await canLaunch(pqdn)) await launch(pqdn);
    else throw 'could not launch "$pqdn"';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lime,
          title: new Text("Miscellaneous"),
        centerTitle: true,
      ),
        body: new Column(
          children: <Widget>[
            new FlatButton(onPressed: _launchURl,
                child: new Text("Admission Procedure",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center)),
            new FlatButton(onPressed: _launchURL,
                child: new Text("Placements",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center)),
            new FlatButton(onPressed: _launchFun,
                child: new Text("Accommodation",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center))
        ],
      ),
    );
  }
}