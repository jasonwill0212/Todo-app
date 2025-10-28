import 'package:flutter/material.dart';
import 'package:todo_app/registration_screen.dart';
import 'package:todo_app/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        const SizedBox(height: 220),
        Image.asset(
          'assets/images/person_with_phone_img.png',
          width: 172.56,
          height: 170,
        ),
        const SizedBox(height: 45),
        const Text(
          'Gets things done with TODO',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0.8,
            color:Color(0XFF000000)
          ),
        ),
        const SizedBox(height: 36),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Interdum\n dictum tempus, interdum at dignissim \n metus. Ultricies sed nunc.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 1.37,
              letterSpacing: 0.8,
            ),
          ),
        ),
        const SizedBox(height: 92),

        CustomButton(buttonText: "Get Started", onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => RegistrationScreen()));
        }
        )
        // InkWell(
        //   onTap: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const RegistrationScreen(),
        //       ),
        //     );
        //   },
          // child: Container(
          //   width: 325,
          //   height: 62,
          //   decoration: BoxDecoration(
          //     color: const Color(0xFF50C2C9)
          //   ),
          //   alignment: Alignment.center,
          //   child: const Text(
          //     'Get Started',
          //     style: TextStyle(
          //       fontFamily: 'Poppins',
          //       fontWeight: FontWeight.w600,
          //       fontSize: 16,
          //       color:Color.fromARGB(255, 255, 255, 255)
          //     ),
          //   ),
          // ),
        ,
      ],
    ),
  ],
)


    );
  }
}
