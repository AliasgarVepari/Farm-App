import 'package:flutter/material.dart';
import 'package:farmapp/textfield_container.dart';
import 'package:farmapp/frogot_password/forgot_password.dart';
import 'package:farmapp/signup/signup_page.dart';
import 'package:farmapp/social_logos.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyHome(),resizeToAvoidBottomInset: false,);
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  final String google = 'images/icons8-google 1@3x.png';
  final String apple = 'images/icons8-apple-logo 1@3x.png';
  final String facebook = 'images/Group 52@3x.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30,20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              child: Text('FarmerEats'),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 60,
            ),
            Align(
              child: Text(
                'Welcome back!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('New here?'),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text(
                    'Create account',
                    style: TextStyle(color: Color(0xFFD5715B)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Image.asset(
                      'images/Vector@3x-5.png',
                      scale: 2,
                    ),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            SizedBox(height: 20,),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Image.asset(
                    'images/Group 47@2x.png',
                    scale: 1.5,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xFFA7A6A5),
                  ),
                  suffix: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      'Forgot?',
                      style: TextStyle(
                          color: Color(0xFFD5715B),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){ Navigator.pop(context);},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD5715B),
                ),
                child: TextButton(
                  onPressed: () { Navigator.pop(context); },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'or login with',
              style: TextStyle(fontSize: 10, color: Color(0xFFBEBBB8)),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialLogos(
                  imageUrl: 'images/icons8-google 1@3x.png',
                ),
                SocialLogos(imageUrl: 'images/icons8-apple-logo 1@3x.png'),
                SocialLogos(imageUrl: 'images/Group 52@3x.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}