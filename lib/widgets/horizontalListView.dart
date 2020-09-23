import 'package:flutter/material.dart';
import 'package:spotify_UI/models/horizontalViewData.dart';

class HorizontalListView extends StatefulWidget {
  final String aboveText;
  final dynamicData;
  HorizontalListView({this.aboveText, this.dynamicData});
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 30, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: Text(
                  widget.aboveText,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                height: 165,
                child: ListView.builder(
                    itemCount: widget.dynamicData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 160,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  // height: 150.0,
                                  width: 150.0,
                                  // child: Text("hey there"),
                                  child: Image.network(
                                    widget.dynamicData[index].image,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                widget.dynamicData[index].songName,
                                style: TextStyle(
                                  color: Colors.grey[200],
                                ),
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
