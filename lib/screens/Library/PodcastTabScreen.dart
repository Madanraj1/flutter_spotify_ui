import 'package:flutter/material.dart';
import 'package:spotify_UI/screens/Library/Downloads.dart';
import 'package:spotify_UI/screens/Library/Episodes.dart';
import 'package:spotify_UI/screens/Library/Shows.dart';

class PodcastTabScreen extends StatelessWidget {
  TabController subTabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: TabBar(
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              labelColor: Colors.white,
              indicatorColor: Colors.green,
              isScrollable: true,
              controller: subTabController,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: "Episodes",
                ),
                Tab(
                  text: "Downloads",
                ),
                Tab(
                  text: "Shows",
                ),
              ]),
        ),
        body: TabBarView(children: [
          EpisodesScreen(),
          DownloadScreen(),
          ShowsScreen(),
        ]),
      ),
    );
  }
}
