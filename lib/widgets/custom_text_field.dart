import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPassword;


  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isPassword = false
  });

@override
  
  Widget  build(BuildContext context){
    return Padding(padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 25),
        child:
        TextField(
          obscureText: obscureText || isPassword,
          // textAlign: TextAlign.center,
          decoration: InputDecoration(
          filled:true,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
          hintText: hintText,
          hintStyle: const TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 13),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none),
          
        
          ),
        ) 
        ,);
  }
}
