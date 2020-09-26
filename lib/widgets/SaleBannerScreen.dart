import 'package:flutter/material.dart';
import 'package:spotify_UI/widgets/PremiumButton.dart';

class SaleBannerScreen extends StatelessWidget {
  Color color1, color2;

  SaleBannerScreen({this.color1, this.color2});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.purple,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Premium Family",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Free",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "FOR 1 MONTH",
                        style: TextStyle(color: Colors.grey[400], fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(
                  "Up to 6 Premium accounts . Family Mix: Shared playlist .Block explict music .Ad-free music .Download to listen offline . Unlimited skips .On-demand playback .Cancel anytime",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: PremiumButton("TRY 1 MONTH  FREE"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      children: [
                        TextSpan(
                            text:
                                "Only ₹119/month after. For up to 6 family members living at the same address"),
                        TextSpan(
                            text: "Terms and conditions ",
                            style: TextStyle(color: Colors.grey[300])),
                        TextSpan(text: "apply.")
                      ])),
            ),
          ],
        ));
  }
}
