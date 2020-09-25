import 'package:flutter/material.dart';
import 'package:spotify_UI/models/playlistData.dart';

class AlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
        child: ListView.builder(
            itemCount: playListData01.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 60,
                  child: Image.network(
                    playListData01[index].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  playListData01[index].name,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  playListData01[index].subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }),
      ),
    );
  }
}
