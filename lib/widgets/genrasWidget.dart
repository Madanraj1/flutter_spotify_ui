import 'package:flutter/material.dart';

class GenreGridView extends StatelessWidget {
  Color color1, color2, color3, color4;
  String name1, name2, name3, name4;
  String url1, url2, url3, url4;
  String genre;

  GenreGridView(
      {this.color1,
      this.color2,
      this.color3,
      this.color4,
      this.name1,
      this.name2,
      this.name3,
      this.name4,
      this.url1,
      this.url2,
      this.url3,
      this.url4,
      this.genre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              genre,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        color: color1,
                        height: 100,
                        width: 170,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(15 / 360),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.network(url1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        color: color2,
                        height: 100,
                        width: 170,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name2,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(15 / 360),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.network(url2),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        color: color3,
                        height: 100,
                        width: 170,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name3,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(15 / 360),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.network(url3),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        color: color4,
                        height: 100,
                        width: 170,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                name4,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(15 / 360),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.network(url4),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
