import 'package:flutter/material.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Vector@3x.png',
                scale: 2.5,
              ),
              SizedBox(height: 30,),
              Text(
                'You\'re all Done!',
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
              SizedBox(height: 30,),
              Text(
                'Hang tight!  We are currently reviewing your account and will follow up with you in 2-3 business days. In the meantime, you can setup your inventory.',
                style: TextStyle(color: Color(0xFF898989)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFD5715B),
                borderRadius: BorderRadius.circular(30)),
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Got it!',
                style: TextStyle(color: Colors.white,fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
