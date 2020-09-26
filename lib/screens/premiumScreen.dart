import 'package:flutter/material.dart';
import 'package:spotify_UI/widgets/PremiumButton.dart';
import 'package:spotify_UI/widgets/SaleBannerScreen.dart';
import 'package:spotify_UI/widgets/customIndicator.dart';

class PremiumScreen extends StatefulWidget {
  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Text(
              "Try Premium free for 1 month",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          CarouselWithIndicatorDemo(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: PremiumButton("GET PREMIUM"),
          ),
          SizedBox(height: 5),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  children: [
                    TextSpan(
                        text:
                            "Only ₹119/month after offer period. Cancel anytime."),
                    TextSpan(
                        text: "Terms and conditions ",
                        style: TextStyle(color: Colors.grey[300])),
                    TextSpan(text: "apply.")
                  ])),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[700],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Spotify Free",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Current Plan",
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SaleBannerScreen(
              color1: Color(0xff8e44ad),
              color2: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SaleBannerScreen(
              color1: Color(0xffd35400),
              color2: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
