import 'package:flutter/material.dart';
import 'package:spotify_UI/screens/Library/MusicTabSection.dart';
import 'package:spotify_UI/screens/Library/PodcastTabScreen.dart';

class YourLibraryScreen extends StatefulWidget {
  @override
  _YourLibraryScreenState createState() => _YourLibraryScreenState();
}

class _YourLibraryScreenState extends State<YourLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    TabController mainTabController;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: TabBar(
                controller: mainTabController,
                labelStyle:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                labelColor: Colors.white,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: [
                  Container(
                    child: Text("Music"),
                  ),
                  Container(
                    child: Text("Podcasts"),
                  )
                ]),
          ),
          body: TabBarView(children: [MusicTabSection(), PodcastTabScreen()]),
        ));
  }
}
