import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboardingWidget.dart';
import 'package:farmapp/login_page.dart';
import 'package:farmapp/signup/signup_page.dart';
import 'package:farmapp/signup/business_hours.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final getHours = prefs.getBool('getHours') ?? false;

  runApp(MyApp(getHours:getHours));https://github.com/AliasgarVepari/Farm-App.git
}

const kColorGreen = Color(0xFF5EA25F);
const kColorAmber = Color(0xFFD5715B);
const kColorYellow = Color(0xFFF8C569);

class MyApp extends StatelessWidget {

  final bool getHours;
  const MyApp({Key? key,required this.getHours}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:MyHome(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final controller = PageController();

  Color bgColor = kColorGreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 20,
              child: PageView(
                controller: controller,
                onPageChanged: (index){
                  setState((){
                    switch (index){
                      case 0: bgColor = kColorGreen;
                      print(index);
                      break;
                      case 1: bgColor = kColorAmber;
                      break;
                      case 2: bgColor = kColorYellow;
                      break;
                      default: bgColor = kColorGreen;
                    }
                  });
                },
                children: [
                  OnBoardingWidget(
                      kColorGreen,
                      'Quality',
                      'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.',
                      AssetImage('images/Group 44.png')),
                  OnBoardingWidget(
                      kColorAmber,
                      'Convenient',
                      'Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.',
                      AssetImage('images/Group.png')),
                  OnBoardingWidget(
                      kColorYellow,
                      'Local',
                      'We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time.',
                      AssetImage('images/Group 46.png')),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(top:2),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 10,
                        dotColor: Colors.black,
                        activeDotColor: Colors.black,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignupPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: bgColor,
                        ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignupPage()));
                          },
                          child: Text(
                            'Join the movement!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            decoration: TextDecoration.underline,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}


