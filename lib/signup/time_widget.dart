import 'package:flutter/material.dart';

enum Selected {
  box1,
  box2,
  box3,
  box4,
  box0,
  unselected,
}

class TimeWidget extends StatefulWidget {
  const TimeWidget({Key? key}) : super(key: key);

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

Selected firstSelection = Selected.unselected;
Selected secondSelection = Selected.unselected;
Selected thirdSelection = Selected.unselected;

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TimeBox(
              time: '8:00am - 10:00am',
              isActive: thirdSelection == Selected.box0 ||
                      firstSelection == Selected.box0 ||
                      secondSelection == Selected.box0
                  ? true
                  : false,
              onPressed: () {
                setState(() {
                  if (firstSelection == Selected.unselected &&
                      secondSelection != Selected.box0 &&
                      thirdSelection != Selected.box0) {
                    firstSelection = Selected.box0;
                  } else if (firstSelection != Selected.box0 &&
                      secondSelection == Selected.unselected &&
                      thirdSelection != Selected.box0) {
                    secondSelection = Selected.box0;
                  } else if (firstSelection != Selected.box0 &&
                      secondSelection != Selected.box0 &&
                      thirdSelection == Selected.unselected) {
                    thirdSelection = Selected.box0;
                  } else if(firstSelection != Selected.box0 &&
                      secondSelection != Selected.box0 &&
                      thirdSelection != Selected.box0){
                    thirdSelection = Selected.box0;
                  }else {
                    if (firstSelection == Selected.box0) {
                      firstSelection = Selected.unselected;
                    } else if (secondSelection == Selected.box0) {
                      secondSelection = Selected.unselected;
                    } else if (thirdSelection == Selected.box0) {
                      thirdSelection = Selected.unselected;
                    }
                  }
                });
                print('1st Box: first = $firstSelection\n'
                    'second = $secondSelection\n'
                    'third = $thirdSelection');
              },
            ),
            TimeBox(
              time: '10:00am - 1:00pm',
              isActive: thirdSelection == Selected.box1 ||
                      firstSelection == Selected.box1 ||
                      secondSelection == Selected.box1
                  ? true
                  : false,
              onPressed: () {
                setState(() {
                  if (firstSelection == Selected.unselected &&
                      secondSelection != Selected.box1 &&
                      thirdSelection != Selected.box1) {
                    firstSelection = Selected.box1;
                  } else if (firstSelection != Selected.box1 &&
                      secondSelection == Selected.unselected &&
                      thirdSelection != Selected.box1) {
                    secondSelection = Selected.box1;
                  } else if (firstSelection != Selected.box1 &&
                      secondSelection != Selected.box1 &&
                      thirdSelection == Selected.unselected) {
                    thirdSelection = Selected.box1;
                  } else if(firstSelection != Selected.box1 &&
                      secondSelection != Selected.box1 &&
                      thirdSelection != Selected.box1){
                    thirdSelection = Selected.box1;
                  }else {
                    if (firstSelection == Selected.box1) {
                      firstSelection = Selected.unselected;
                    } else if (secondSelection == Selected.box1) {
                      secondSelection = Selected.unselected;
                    } else if (thirdSelection == Selected.box1) {
                      thirdSelection = Selected.unselected;
                    }
                  }
                });
                print('2nd Box: first = $firstSelection\n'
                    'second = $secondSelection\n'
                    'third = $thirdSelection');
              },
            ),
            TimeBox(
              time: '1:00pm - 4:00pm',
              isActive: thirdSelection == Selected.box2 ||
                      firstSelection == Selected.box2 ||
                      secondSelection == Selected.box2
                  ? true
                  : false,
              onPressed: () {
                setState(() {
                  if (firstSelection == Selected.unselected &&
                      secondSelection != Selected.box2 &&
                      thirdSelection != Selected.box2) {
                    firstSelection = Selected.box2;
                  } else if (firstSelection != Selected.box2 &&
                      secondSelection == Selected.unselected &&
                      thirdSelection != Selected.box2) {
                    secondSelection = Selected.box2;
                  } else if (firstSelection != Selected.box2 &&
                      secondSelection != Selected.box2 &&
                      thirdSelection == Selected.unselected) {
                    thirdSelection = Selected.box2;
                  } else if(firstSelection != Selected.box2 &&
                      secondSelection != Selected.box2 &&
                      thirdSelection != Selected.box2){
                    thirdSelection = Selected.box2;
                  }else {
                    if (firstSelection == Selected.box2) {
                      firstSelection = Selected.unselected;
                    } else if (secondSelection == Selected.box2) {
                      secondSelection = Selected.unselected;
                    } else if (thirdSelection == Selected.box2) {
                      thirdSelection = Selected.unselected;
                    }
                  }
                });
                print('3rd Box: first = $firstSelection\n'
                    'second = $secondSelection\n'
                    'third = $thirdSelection');
              },
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TimeBox(
              time: '4:00pm - 7:00pm',
              isActive: thirdSelection == Selected.box3 ||
                      firstSelection == Selected.box3 ||
                      secondSelection == Selected.box3
                  ? true
                  : false,
              onPressed: () {
                setState(() {
                  if (firstSelection == Selected.unselected &&
                      secondSelection != Selected.box3 &&
                      thirdSelection != Selected.box3) {
                    firstSelection = Selected.box3;
                  } else if (firstSelection != Selected.box3 &&
                      secondSelection == Selected.unselected &&
                      thirdSelection != Selected.box3) {
                    secondSelection = Selected.box3;
                  } else if (firstSelection != Selected.box3 &&
                      secondSelection != Selected.box3 &&
                      thirdSelection == Selected.unselected) {
                    thirdSelection = Selected.box3;
                  } else if(firstSelection != Selected.box3 &&
                      secondSelection != Selected.box3 &&
                      thirdSelection != Selected.box3){
                    thirdSelection = Selected.box3;
                  }
                  else {
                    if (firstSelection == Selected.box3) {
                      firstSelection = Selected.unselected;
                    } else if (secondSelection == Selected.box3) {
                      secondSelection = Selected.unselected;
                    } else if (thirdSelection == Selected.box3) {
                      thirdSelection = Selected.unselected;
                    }
                  }
                });
              },
            ),
            TimeBox(
              time: '7:00pm - 10:00pm',
              isActive: thirdSelection == Selected.box4 ||
                      firstSelection == Selected.box4 ||
                      secondSelection == Selected.box4
                  ? true
                  : false,
              onPressed: () {
                setState(() {
                  if (firstSelection == Selected.unselected &&
                      secondSelection != Selected.box4 &&
                      thirdSelection != Selected.box4) {
                    firstSelection = Selected.box4;
                  } else if (firstSelection != Selected.box4 &&
                      secondSelection == Selected.unselected &&
                      thirdSelection != Selected.box4) {
                    secondSelection = Selected.box4;
                  } else if (firstSelection != Selected.box4 &&
                      secondSelection != Selected.box4 &&
                      thirdSelection == Selected.unselected) {
                    thirdSelection = Selected.box4;
                  } else if(firstSelection != Selected.box4 &&
                      secondSelection != Selected.box4 &&
                      thirdSelection != Selected.box4){
                    thirdSelection = Selected.box4;
                  }else {
                    if (firstSelection == Selected.box4) {
                      firstSelection = Selected.unselected;
                    } else if (secondSelection == Selected.box4) {
                      secondSelection = Selected.unselected;
                    } else if (thirdSelection == Selected.box4) {
                      thirdSelection = Selected.unselected;
                    }
                  }
                });
              },
            ),
            Container(
              height: 50,
              width: 160,
              margin: EdgeInsets.only(top: 5, bottom: 5),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                '',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class TimeBox extends StatelessWidget {
  const TimeBox(
      {Key? key,
      required this.time,
      required this.isActive,
      required this.onPressed})
      : super(key: key);

  final bool isActive;
  final String time;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, //onPressed,
      child: Container(
        height: 50,
        width: 160,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: isActive ? Color(0xFFF8C569) : Color(0xFFEEEDEC),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          time,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
