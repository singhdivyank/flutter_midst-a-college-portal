import 'package:flutter/material.dart';
import 'package:flutter_midst/faculty.dart';
import 'package:flutter_midst/homepage.dart';
import 'package:flutter_midst/miscelaneous.dart';
import 'package:flutter_midst/parent.dart';
import 'package:flutter_midst/student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midst',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: HomePage(),
        routes: {
          "/first": (BuildContext context) => new ParentFragment(),
          "/second": (BuildContext context) => new StudentFragment(),
          "/third": (BuildContext context) => new FacultyFragment(),
          "/fourth": (BuildContext context) => new MiscellaneousFragment()
      },
    );
  }
}
