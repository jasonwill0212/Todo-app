import 'package:flutter/material.dart';
import 'package:todo_app/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.back_hand, color: Colors.black),
        backgroundColor: Colors.red,
        title: Text(
          "widget.tit halha dalghle",
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              print("More options");
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const Text('You have pushed the button this many  halkh adglha gslhasdlhagdlatimes:'),
          Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
          ElevatedButton(
            onPressed: () {
              print("tap");
            },
            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.black)),
            child: const Text('Increment', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 100),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));
            },
            child: Container(
              width: 325,
              height: 62,
              decoration: BoxDecoration(color: Colors.lime, borderRadius: BorderRadius.circular(20)),
              child: const Text('Container'),
              alignment: Alignment.center,
            ),
          ),
          // TextFormField(
          //   decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)), hintText: "Enter password"),
          // ),
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Container(width: 200, height: 200, color: Colors.blue),
          //     Positioned(child: Container(width: 150, height: 150, color: Colors.red), top: 0, left: 10),
          //     // Container(width: 100, height: 100, color: Colors.green),
          //   ],
          // ),
          // Image.asset('assets/images/person_with_phone_img.png', width: 100, height: 100),
          // Image.network(width: 100, height: 100, 'https://img.freepik.com/free-photo/slice-ripe-orange-citrus-fruit-isolated-white_146671-19260.jpg'),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.add)),
    );
  }
}
