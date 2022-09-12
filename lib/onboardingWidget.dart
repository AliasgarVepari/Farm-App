import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingWidget extends StatelessWidget {
  OnBoardingWidget(this.bgColor,this.headerText,this.descText,this.image);

  Color bgColor;
  String headerText;
  String descText;
  AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image(
                  image: image, fit: BoxFit.fill),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding:
              EdgeInsets.only(top: 30, bottom: 20, right: 30, left: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    headerText,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    descText,
                    //'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.',
                    style:
                    TextStyle(fontSize: 15, color: Colors.grey.shade700),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}
