import 'package:flutter/material.dart';
import 'package:farmapp/textfield_container.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: Container(
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
                'Reset Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(height: 20,),
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
                      'images/Group 47@2x.png',
                      scale: 2,
                    ),
                    hintText: 'New Password',
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
                      scale: 2,
                    ),
                    hintText: 'Confirm New Password',
                    hintStyle: TextStyle(
                      color: Color(0xFFA7A6A5),
                    )),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}
