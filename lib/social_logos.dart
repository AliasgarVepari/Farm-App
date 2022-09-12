import 'package:flutter/material.dart';

class SocialLogos extends StatelessWidget {
  const SocialLogos({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height*0.06,
      width: size.width*0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(style: BorderStyle.solid, color: Color(0xFFEBEBEB))),
      child: MaterialButton(
        onPressed: () {},
        child: Image.asset(
          imageUrl,
          scale: 3.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}