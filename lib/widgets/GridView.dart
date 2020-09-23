import 'package:flutter/material.dart';

class GridViewList extends StatefulWidget {
  @override
  _GridViewListState createState() => _GridViewListState();
}

class _GridViewListState extends State<GridViewList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 15, 0, 20),
          child: Text("Good  evening",
              style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                print("click-1");
              },
              child: Card(
                color: Colors.grey[800],
                child: Row(
                  children: [
                    SizedBox(
                      // height: 70,
                      width: 40,
                      child: Image.network(
                        "https://images.pexels.com/photos/4406759/pexels-photo-4406759.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        // fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Maha Bharat with Druv rathee",
                          style:
                              TextStyle(color: Colors.grey[200], fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.grey[800],
              child: Row(
                children: [
                  SizedBox(
                    // height: 70,
                    width: 40,
                    // width: 100,
                    child: Image.network(
                      "https://images.pexels.com/photos/2796145/pexels-photo-2796145.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Top Ever Green Bollywood",
                        style: TextStyle(color: Colors.grey[200], fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Card(
              color: Colors.grey[800],
              child: Row(
                children: [
                  SizedBox(
                    // height: 70,
                    width: 40,
                    // width: 100,
                    child: Image.network(
                      "https://images.pexels.com/photos/3971985/pexels-photo-3971985.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Best of Eminem",
                        style: TextStyle(color: Colors.grey[200], fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.grey[800],
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    // height: 70,
                    // width: 100,
                    child: Image.network(
                      "https://images.pexels.com/photos/4406759/pexels-photo-4406759.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Machine Gun Kelly",
                        style: TextStyle(color: Colors.grey[200], fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Card(
              color: Colors.grey[800],
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    // height: 70,
                    // width: 100,
                    child: Image.network(
                      "https://images.pexels.com/photos/1694900/pexels-photo-1694900.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Daily Mix2",
                        style: TextStyle(color: Colors.grey[200], fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.grey[800],
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    // height: 70,
                    // width: 100,
                    child: Image.network(
                      "https://images.pexels.com/photos/4709822/pexels-photo-4709822.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Daily Playlist",
                        style: TextStyle(color: Colors.grey[200], fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
