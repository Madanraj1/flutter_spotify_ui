import 'package:flutter/material.dart';

class YourLibraryScreen extends StatefulWidget {
  @override
  _YourLibraryScreenState createState() => _YourLibraryScreenState();
}

class _YourLibraryScreenState extends State<YourLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.school),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Text("home1"),
            ),
            Container(
              child: Text("home2"),
            )
          ]),
        ));
  }
}
