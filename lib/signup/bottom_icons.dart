import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {

  const BottomIcons({Key? key, required this.onTapped, required this.second}) : super(key: key);
  final Function onTapped;
  final Widget second;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: second
          ),
          GestureDetector(
            onTap: onTapped(),
            child: Container(
              padding: EdgeInsets.only(left: 80, right: 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFD5715B),
              ),
              child: TextButton(
                onPressed: onTapped(),
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


