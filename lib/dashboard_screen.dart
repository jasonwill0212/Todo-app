import 'package:flutter/material.dart';
import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:todo_app/widgets/Customclock.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
  body:  Column(
  children: [
    Expanded(
      flex: 2,
      child: Stack(
        // clipBehavior: Clip.none, // 👈 Quan trọng! Cho phép ảnh nằm ngoài vùng Stack
        children: [

          Container(
            color: const Color(0xFF50C2C9),
          ),


          Positioned(
            top: -109,
            left: -99,
            child: Image.asset(
              'assets/images/shape.png',
              width: 380,
              height: 380,color: Color(0XFFBFDAD8),
            ),
          ),

          
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFF2b8e94),
                  width: 3,
                ),
              ),
              child: 
              
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
                
              
            ),
          ),
          
          Align(
            alignment: Alignment.center,
            child: 
            Column(
              children: [
                
                const SizedBox(height: 251,),
            Text("Welcome, Senpai",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Poppins',fontSize: 18,color: Color(0XFFFFFFFF)),),
            
            
              ]
              
          )
          )
          
        ],
      ),
    ),

    Expanded(
      flex: 3,
      child: Container(color: Colors.white,
      child: Center(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  FourNumberClock()
                ],
              )
            ],
          ),
        ),
      )),
    ),
  ],
),

);

}
}