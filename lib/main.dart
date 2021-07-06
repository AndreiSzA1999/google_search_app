import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_search_app/screens/first_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Google Search App',
        debugShowCheckedModeBanner: false,
        home: FistPage());
  }
}
