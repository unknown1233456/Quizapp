import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedCustomButton extends StatelessWidget {
  const ElevatedCustomButton(
      {super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            backgroundColor: const Color.fromARGB(255, 53, 24, 101)),
        onPressed: onTap,
        child: Text(text,style:GoogleFonts.lato(
          color: Colors.white,
          fontSize: 19
        ),textAlign: TextAlign.center,),
      ),
    );
  }
}
