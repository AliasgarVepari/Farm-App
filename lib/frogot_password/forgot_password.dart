import 'package:flutter/material.dart';
import 'package:farmapp/textfield_container.dart';
import 'package:farmapp/frogot_password/verify_otp.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(),
      resizeToAvoidBottomInset: false,
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
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
                'Forgot Password?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Remember your password?'),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Login',
                  style: TextStyle(color: Color(0xFFD5715B)),
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
                      'images/Vector@3x-1.png',
                      scale: 2,
                    ),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerifyOtp()));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD5715B),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerifyOtp()));
                  },
                  child: Text(
                    'Send Code',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
