import 'package:flutter/material.dart';
import 'package:spotify_UI/screens/homeTabbar.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff2c3e50),
          tabBarTheme: TabBarTheme(labelColor: Colors.green)),
      title: "Spotify",
      home: HomePage(),
    );
  }
}
