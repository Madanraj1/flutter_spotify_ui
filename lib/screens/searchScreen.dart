import 'package:flutter/material.dart';
import 'package:spotify_UI/widgets/genrasWidget.dart';
import 'package:spotify_UI/widgets/searchFunctionality.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff4f4f4f),
        Color(0xff121212),
      ], begin: Alignment.topLeft, end: FractionalOffset(0.1, 0.3))),
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    clipBehavior: Clip.antiAlias,
                    child: GestureDetector(
                      onTap: () {
                        showSearch(context: context, delegate: MusicSearch());
                      },
                      child: Container(
                        height: 55,
                        width: 380,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 30,
                              ),
                              Text(
                                " Artists, ",
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "songs, ",
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "or podcasts",
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GenreGridView(
                  genre: "Your top genre",
                  name1: "Hip Hop",
                  name2: "Pop",
                  name3: "Rock",
                  name4: "Bollywood",
                  color1: Colors.red,
                  color2: Colors.greenAccent,
                  color3: Colors.blueGrey,
                  color4: Colors.pinkAccent,
                  url1:
                      "https://images.pexels.com/photos/4571219/pexels-photo-4571219.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  url2:
                      "https://images.pexels.com/photos/2479312/pexels-photo-2479312.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  url3:
                      "https://images.pexels.com/photos/3618362/pexels-photo-3618362.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  url4:
                      "https://images.pexels.com/photos/761963/pexels-photo-761963.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                GenreGridView(
                  genre: "Browse all",
                  name1: "At Home",
                  name2: "Punjabi",
                  name3: "Summer",
                  name4: "Romance",
                  color1: Colors.amber,
                  color2: Colors.blueAccent,
                  color3: Colors.purpleAccent,
                  color4: Colors.deepPurpleAccent,
                  url1:
                      "https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  url2:
                      "https://images.pexels.com/photos/1389429/pexels-photo-1389429.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  url3:
                      "https://images.pexels.com/photos/1876279/pexels-photo-1876279.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  url4:
                      "https://images.pexels.com/photos/6320/smartphone-vintage-technology-music.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
