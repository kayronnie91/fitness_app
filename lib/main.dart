import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu,
          color: Color(0xFFBFFF00)),
          title:Text('VELOCITY',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFBFFF00),
            letterSpacing: 2.4,
            fontWeight: FontWeight(800),
          ),
          ),
          actions: [
            CircleAvatar(
              radius:28,
              backgroundImage: AssetImage('images/julia_avatar.jpg'),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // MAIN HEADING //
              Text('Upper Body Power',
              style: TextStyle(
                fontWeight: FontWeight(800),
                fontSize: 30,
                color: Colors.white,
              ),
              ),

              // SUBHEADING //
              SizedBox(height:8),

              Text('WEEK 4 - DAY 2'),

            ],
          ),
        ),


      ),




    );
  }
}


