import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 10, 15, 0),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.grey[850],
                  child: Column(
                    children: [
                      ListTile(
                        leading: SizedBox(
                          height: 60,
                          width: 50,
                          child: Image.network(
                              "https://as2.ftcdn.net/jpg/02/88/30/85/500_F_288308598_RbzkYWrw2EDLpvOtQzZAND3gznEIu2GB.jpg"),
                        ),
                        title: Text(
                          "47: The Master Skill of Life",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          "The Think Grow Podcast",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 30,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        child: ListTile(
                            leading: Icon(
                              Icons.play_circle_filled,
                              color: Colors.grey,
                            ),
                            title: Text(
                              "Today . 30 MINS",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            trailing: Wrap(
                              spacing: 12,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  Icons.arrow_drop_down_circle,
                                  color: Colors.green,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
