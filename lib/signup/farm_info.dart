import 'package:farmapp/signup/verify_1.dart';
import 'package:flutter/material.dart';
import 'package:farmapp/textfield_container.dart';
import 'package:farmapp/signup/bottom_icons.dart';

class FarmInfo extends StatelessWidget {
  const FarmInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(),
      resizeToAvoidBottomInset: false,
      // bottomSheet: BottomIcons(
      //   second: Image.asset(
      //     'images/Vector@3x-4.png',
      //     scale: 2.5,
      //   ),
      //   onTapped: () {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (context) => Verify1()));
      //   },
      // ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String dropdownValue = 'State';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              child: Text('FarmerEats'),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              child: Text(
                'Signup 2 of 4',
                style: TextStyle(color: Color(0xFFB3B3B3), fontSize: 12),
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
              child: Text(
                'Farm Info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Image.asset(
                      'images/Group 59@3x.png',
                      scale: 2,
                    ),
                    hintText: 'Business Name',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Image.asset(
                      'images/Group 57@3x.png',
                      scale: 2,
                    ),
                    hintText: 'Informal Name',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Image.asset(
                      'images/Vector@3x-1.png',
                      scale: 2,
                    ),
                    hintText: 'Street Address',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Image.asset(
                      'images/Group 58@3x.png',
                      scale: 2,
                    ),
                    hintText: 'City',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Flexible(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEDEC),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton<String>(
                    underline: Container(),
                    value: dropdownValue,
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    isExpanded: true,
                    style: TextStyle(
                      color: Color(0xFFA7A6A5),
                      fontSize: 15,
                    ),
                    icon: Image.asset(
                      'images/Polygon 1@3x.png',
                      scale: 2.5,
                    ),
                    items: <String>[
                      'State',
                      'AL',
                      'AK',
                      'AS',
                      'AZ',
                      'AR',
                      'CA',
                      'CO',
                      'CT',
                      'DE',
                      'DC',
                      'FM',
                      'FL',
                      'GA',
                      'GU',
                      'HI',
                      'ID',
                      'IL',
                      'IN',
                      'IA',
                      'KS',
                      'KY',
                      'LA',
                      'ME',
                      'MH',
                      'MD',
                      'MA',
                      'MI',
                      'MN',
                      'MS',
                      'MO',
                      'MT',
                      'NE',
                      'NV',
                      'NH',
                      'NJ',
                      'NM',
                      'NY',
                      'NC',
                      'ND',
                      'MP',
                      'OH',
                      'OK',
                      'OR',
                      'PW',
                      'PA',
                      'PR',
                      'RI',
                      'SC',
                      'SD',
                      'TN',
                      'TX',
                      'UT',
                      'VT',
                      'VI',
                      'VA',
                      'WA',
                      'WV',
                      'WI',
                      'WY'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 7,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEDEC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pincode',
                            hintStyle: TextStyle(
                              color: Color(0xFFA7A6A5),
                            )),
                        keyboardType: TextInputType.number,
                      ),
                    )),
              ),
            ]),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/Vector@3x-4.png',scale: 2.5,)
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Verify1()));
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
                            MaterialPageRoute(builder: (context) => Verify1()));
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
