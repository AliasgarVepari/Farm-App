import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:farmapp/frogot_password/reset_password.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(),
      resizeToAvoidBottomInset: false,
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

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
                'Verify OTP',
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
            // TextFieldContainer(
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: InputBorder.none,
            //         icon: Image.asset(
            //           'images/Vector@3x-1.png',
            //           scale: 2,
            //         ),
            //         hintText: 'Phone Number',
            //         hintStyle: TextStyle(
            //           color: Color(0xFFA7A6A5),
            //         )),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtpTextFeild(),
                OtpTextFeild(),
                OtpTextFeild(),
                OtpTextFeild(),
                OtpTextFeild(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResetPassword()));
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ResetPassword()));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Resend Code',
              style: TextStyle(
                  color: Colors.black, decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
    );
  }
}

class OtpTextFeild extends StatelessWidget {
  const OtpTextFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFEEEDEC),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 0,style: BorderStyle.none,color: Color(0xFFEEEDEC)))),
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
