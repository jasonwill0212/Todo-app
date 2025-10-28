
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;


const CustomButton({    
  super.key,
  required this.buttonText,
  required this.onTap
});


@override
  Widget build (BuildContext content){
    return
    GestureDetector(
      onTap: onTap, // bắt sự kiện nhấn  
    child:
    Container(
            
            width: 325,
            height: 62,
            decoration: BoxDecoration(
              color: const Color(0xFF50C2C9)
            ),
            alignment: Alignment.center,
            child:Text(
              buttonText,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color:Color.fromARGB(255, 255, 255, 255)
              ),
            ),
          )
          );
  }
  }