import 'package:todo_app/dashboard_screen.dart';
import 'package:todo_app/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <LoginScreen> createState () => _LoginScreenState();
}

class _LoginScreenState extends State <LoginScreen>{
  @override
  Widget build(BuildContext context){
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
          
            const SizedBox(height: 196),
            Align(
              alignment: Alignment.center, 
              child:
              Text("Welcome Back!",style: TextStyle(fontFamily: "Poppins",fontSize: 18, fontWeight:FontWeight.w600),)
            ),
              const SizedBox(height: 10),
              Center(
              child: 
              
                  
                    DottedBorder(
                      child: SizedBox(
                        width: 240,
                        height: 200,
                        child: Center(
                          child: 
                            Image.asset("assets/images/undraw_my_notifications_rjej.png")
                        ),
                      ),
                      options:
                      RectDottedBorderOptions(
                        
                        strokeWidth: 1,
                        dashPattern: [8, 9],
                        
                      )
                    )
                    
                  
                  
                    
                    
               
                ),
                SizedBox(height: 26),
                CustomTextField(hintText: "Enter your email"),
                SizedBox(height: 21),
                CustomTextField(hintText: "Enter password",isPassword:true ),
                SizedBox(height: 25),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                       MaterialPageRoute(
                        builder: (context) => const RegistrationScreen()
                        )
                        );
                  },

                  child:
                  Container(
                  child:
                  Text("Forgot Password",style: TextStyle(color:Color(0XFF50C2C9),fontFamily: "Poppins",fontSize: 14 ),)
                )
                ),
                

                SizedBox(height: 24),

                CustomButton(buttonText: "Sign In", onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DashboardScreen())
                  );
                }),


                SizedBox(height:29 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    

     
                    Text("Don’t have an account ? "),

                    InkWell(
                      child: Container(
                        child: Text("Sign Up", style: TextStyle(color: Color(0XFF50C2C9),fontFamily: 'Poppins',fontSize: 14,fontWeight: FontWeight.w600),),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegistrationScreen())
                        );
                      },
                    )
                    
                  
                  ],
                    
      
                )

              
                
                

              

              
            ],
          
          
      
      )]
      
      
      
      )
    );
  }
}