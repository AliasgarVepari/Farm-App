import 'package:flutter/material.dart';
import 'package:farmapp/signup/bottom_icons.dart';
import 'package:farmapp/signup/business_hours.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Verify1 extends StatelessWidget {
  const Verify1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Align(
              child: Text('FarmerEats'),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              child: Text(
                'Signup 2 of 4',
                style: TextStyle(color: Color(0xFFB3B3B3), fontSize: 12),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              child: Text(
                'Verifications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Attached proof of Department of Agriculture registrations i.e. Florida Fresh, USDA Approved, USDA Organic',
              style: TextStyle(color: Color(0xFFB3B3B3)),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Attach proof of registration',
                  style: TextStyle(color: Color(0xFF261C12)),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Image.asset(
                    'images/camera.png',
                    scale: 2.5,
                  ),
                  backgroundColor: Color(0xFFD5715B),
                )
              ],
            )
          ]),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'images/Vector@3x-4.png',
                  scale: 2.5,
                )),
            GestureDetector(
              onTap: () async{
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('getHours', true);

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BusinessHours()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 80, right: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD5715B),
                ),
                child: TextButton(
                  onPressed: () async {

                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('getHours', true);

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BusinessHours()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
