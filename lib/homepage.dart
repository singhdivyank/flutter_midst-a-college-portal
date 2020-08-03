import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: new Text("midst- a college portal"),
        centerTitle: true,
      ),
        drawer: new Drawer(
          child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Thapar Institute of Engineering "
                    "and Technology"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: new Text("TI"),
                ),),
            new ListTile(
              title: new Text("Parents"),
              trailing: new Icon(Icons.people),
              onTap: () => Navigator.pushNamed(context, '/first'),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Student"),
              trailing: new Icon(Icons.person),
              onTap: () => Navigator.pushNamed(context, '/second'),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Faculty"),
              trailing: new Icon(Icons.account_box),
              onTap: () => Navigator.pushNamed(context, '/third'),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Miscellaneous"),
              trailing: new Icon(Icons.person_add),
              onTap: () => Navigator.pushNamed(context, '/fourth'),
            )
          ],
        ),
      ),
        body: new Container(
          child: new Center(
            child: new Text("Developed by Divyank Singh"),
        ),
      ),
    );
  }
}