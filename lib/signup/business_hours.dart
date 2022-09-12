import 'package:flutter/material.dart';
import 'package:farmapp/signup/verify_2.dart';
import 'package:farmapp/signup/time_widget.dart';

class BusinessHours extends StatelessWidget {
  const BusinessHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                child: Text('FarmerEats'),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                child: Text(
                  'Signup 3 of 4',
                  style: TextStyle(color: Color(0xFFB3B3B3), fontSize: 12),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                child: Text(
                  'Business Hours',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Choose the hours your farm is open for pickups. This will allow customers to order deliveries.',
                style: TextStyle(color: Color(0xFFB3B3B3)),
              ),
              SizedBox(
                height: 60,
              ),
              DayAndTime(),
            ],
          ),
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
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Verify2()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 80, right: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD5715B),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Verify2()));
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

class DayWidget extends StatelessWidget {
  const DayWidget({
    Key? key,
    required this.isTextBig,
    required this.isCompleted,
    required this.day,
    required this.textColor,
    required this.onTapped,
    required this.boxColor,
  }) : super(key: key);

  final void Function() onTapped;
  final Color textColor;
  final String day;
  final Color boxColor;
  final bool isCompleted;
  final bool isTextBig;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: isTextBig
            ? EdgeInsets.symmetric(vertical: 15, horizontal: 11)
            : EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isCompleted ? Color(0xFFEEEDEC) : boxColor,
            border: Border.all(
                color: isCompleted ? Color(0xFFEEEDEC) : Color(0xFFBEBBB8))),
        child: Text(
          day,
          textAlign: TextAlign.center,
          style: TextStyle(color: isCompleted ? Colors.black : textColor),
        ),
      ),
    );
  }
}

class DayAndTime extends StatefulWidget {
  const DayAndTime({Key? key}) : super(key: key);

  @override
  State<DayAndTime> createState() => _DayAndTimeState();
}

enum BoxColor {
  active,
  inactive,
  completed,
  none,
}

enum Selected {
  M,
  T,
  W,
  TH,
  F,
  S,
  SU,
  unselected,
  completed,
}

enum Display {
  on,
  off
}

class _DayAndTimeState extends State<DayAndTime> {
  BoxColor boxColor = BoxColor.none;
  Selected day = Selected.unselected;
  Display display = Display.off;

  //Color kCompletedTextColor = Colors.black;
  Color kActiveTextColor = Colors.white;
  Color kActiveColor = Color(0xFFD5715B);

  //Color kCompletedColor = Color(0xFFEEEDEC);
  // Color kBorderColor = Color(0xFFBEBBB8);
  Color kInActiveTextColor = Color(0xFFBEBBB8);
  Color kInActiveColor = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'M',
              isTextBig: false,
              textColor: day == Selected.M
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.M
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                 day = Selected.M;
                 display = Display.on;
                });
              },
            ),
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'T',
              isTextBig: false,
              textColor:  day == Selected.T
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.T
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                  day = Selected.T;
                  display = Display.off;
                });
              },
            ),
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'W',
              isTextBig: false,
              textColor:  day == Selected.W
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.W
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                  day = Selected.W;
                });
              },
            ),
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'Th',
              isTextBig: true,
              textColor:  day == Selected.TH
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.TH
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                  day = Selected.TH;
                });
              },
            ),
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'F',
              isTextBig: false,
              textColor:  day == Selected.F
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.F
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                  day = Selected.F;
                });
              },
            ),
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'S',
              isTextBig: false,
              textColor: day == Selected.S
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.S
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                  day = Selected.S;
                });
              },
            ),
            DayWidget(
              isCompleted: boxColor == BoxColor.completed ? true : false,
              day: 'Su',
              isTextBig: true,
              textColor:  day == Selected.SU
                  ? kActiveTextColor
                  : kInActiveTextColor,
              boxColor:
              day == Selected.SU
                  ? kActiveColor
                  : kInActiveColor,
              onTapped: () {
                setState(() {
                  day = Selected.SU;
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        display == Display.on ? TimeWidget(): Container() ,
        SizedBox(
          height: 15,
        ),
      ]),
    );
  }
}

