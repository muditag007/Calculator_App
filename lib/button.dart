// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// creating Stateless Widget for buttons
class Button extends StatelessWidget {
  // declaring variables
  final color;
  final textColor;
  final IconData;
  final String buttonText;
  final buttontapped;
  final buttonhover;

  //Constructor
  Button(
      {this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped,
      this.buttonhover, this.IconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //border: Border.all(width:2,color:Colors.grey),
            color: color,
          ),
          child: Center(
              child: buttonText!=''?Text(
            buttonText,
            style: TextStyle(
                color: textColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ):Icon(IconData,color: textColor,size: 40,),
          ),
        ),
      ),
    );
  }
}
