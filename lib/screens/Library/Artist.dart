import 'package:flutter/material.dart';
import 'package:spotify_UI/models/playlistData.dart';

class ArtistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
        child: ListView.builder(
            itemCount: artistListData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25.0,
                      backgroundImage:
                          NetworkImage(artistListData[index].imageUrl),
                    ),
                    title: Text(
                      artistListData[index].name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  )
                ],
              );
            }),
      ),
    );
  }
}
