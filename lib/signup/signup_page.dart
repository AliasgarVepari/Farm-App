import 'package:farmapp/login_page.dart';
import 'package:flutter/material.dart';
import 'package:farmapp/textfield_container.dart';
import 'package:farmapp/social_logos.dart';
import 'package:farmapp/signup/farm_info.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
      resizeToAvoidBottomInset: false,
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  final String google = 'images/icons8-google 1@3x.png';
  final String apple = 'images/icons8-apple-logo 1@3x.png';
  final String facebook = 'images/Group 52@3x.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30,20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: Text('FarmerEats'),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              child: Text('Signup 1 of 4',style: TextStyle(color: Color(0xFFB3B3B3),fontSize:12),),
              alignment: Alignment.topLeft,
            ),
            Align(
              child: Text(
                'Welcome!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(height: 20,),
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
            SizedBox(height: 20,),
            Text(
              'or signup with',
              style: TextStyle(fontSize: 10, color: Color(0xFFBEBBB8)),
            ),
            SizedBox(height: 10,),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Image.asset(
                      'images/Group 54@3x (1).png',
                      scale: 2,
                    ),
                    hintText: 'Full Name',
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
                      'images/Vector@3x-5.png',
                      scale: 2,
                    ),
                    hintText: 'Email Address',
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
                    hintText: 'Phone Number',
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
                      'images/Group 47@2x.png',
                      scale: 2,
                    ),
                    hintText: 'Password',
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
                    'images/Group 47@2x.png',
                    scale: 1.5,
                  ),
                  hintText: 'Re-Enter Password',
                  hintStyle: TextStyle(
                    color: Color(0xFFA7A6A5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Login',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline),),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmInfo()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 80, right: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFD5715B),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FarmInfo()));
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white,fontSize: 16),
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

