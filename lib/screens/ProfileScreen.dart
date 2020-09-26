import 'package:flutter/material.dart';
import 'package:spotify_UI/widgets/PremiumButton.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isSwitched = false;
  double rating = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Free Account",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 30, 100, 0),
              child: PremiumButton("GO PREMIUM"),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 33,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/5284979/pexels-photo-5284979.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              title: Text(
                "Madan Raj",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                "View Profile",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              trailing: IconButton(
                  icon: Icon(
                    Icons.expand_more,
                    color: Colors.grey,
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
                title: Text(
                  "Off",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Sets your music quality to low and disables canvas",
                  style: TextStyle(color: Colors.grey[500], fontSize: 13),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                "Playback",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Crossfade",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Allows you to crossfade into songs",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "off",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    width: 320,
                    child: Slider(
                        activeColor: Colors.green,
                        min: 0,
                        max: 100,
                        value: rating,
                        onChanged: (newRating) {
                          setState(() {
                            rating = newRating;
                          });
                        }),
                  ),
                  Text(
                    "12s",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            ListTile(
                title: Text(
                  "Gaples",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Allow gapless payback",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            ListTile(
                title: Text(
                  "AutoMix",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Allow gapless payback",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            ListTile(
                title: Text(
                  "AutoMix",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Allow gapless payback",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
            ListTile(
                title: Text(
                  "AutoMix",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Allow gapless payback",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.greenAccent,
                  activeColor: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}
