import 'package:flutter/material.dart';
import 'package:todo_app/login_screen.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/custom_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF6F6F6),
      body: 
      Stack(
        children: [
          
              Positioned(
      top: -109,
      left: -99,
      child: Image.asset(
        'assets/images/shape.png',
        width: 380,
        height: 380,
      ),
    ),
    Column(
      children: [
        const SizedBox(height: 237),
        Align(
          alignment: Alignment.center,
          child:
          Text("Welcome Onboard!",textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.w600,),)
        ),
        const SizedBox(height:14),
        Text
        ("Let’s help you meet up your tasks",textAlign: TextAlign.center,style:TextStyle(fontFamily:'Poppins',fontSize:13,fontWeight:FontWeight.w400,)),
        const SizedBox(height: 49,),
        CustomTextField(hintText: "Enter your full name"),
        const SizedBox(height: 21,),
        CustomTextField(hintText: "Enter your email"),
        const SizedBox(height: 21,),
        CustomTextField(hintText: "Enter password",isPassword: true,),
        const SizedBox(height: 21),
        CustomTextField(hintText: "Confirm Password",isPassword: true),
        const SizedBox(height: 50),
        CustomButton(buttonText: "Register", 
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen(),)

          );
        }),

        
        const SizedBox(height: 23),
      
      
      
        // TextField(
          
        //   // textAlign: TextAlign.center,
        //   decoration: InputDecoration(
        //   contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
        //   hintText: "Enter your full name",
        //   hintStyle: const TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 13),
        //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(22),
        //   borderSide: BorderSide(color: Color(0XFFFFFFFF))),
          
        
        //   ),
        // ) 
    
        
        // TextFormField(
        //   decoration: 
        //   const 
        //   InputDecoration(
        //   hintText: "Enter your full name",
        //   hintStyle: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 13)),
        //   Boder:
        // )
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Already have an account ? "),
            InkWell(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
              ),
            );
          },
                
              
             
            child:
            Container(
            child: 
            Text("Sign In",style: TextStyle(color: Color(0XFF50C2C9),fontFamily: 'Poppins',fontSize: 14,fontWeight:FontWeight.w600),),
            )
            )

          ],
        )
      ],

    )



        ],
      )
    );
  }
}