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
              Text('WEEK 4 - DAY 2',
              style:TextStyle(
                fontSize: 14,
                fontWeight: FontWeight(400),
                color:Color(0xFFABABA6),
              ),
              ),
              SizedBox(height: 18),

              // REST TIMER CONTAINER //

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors:[
                      Color(0xFF2A2F26),
                      Color(0xFF1C1F1A),
                    ]
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('01:45',
                    style:TextStyle(
                      fontSize: 48,
                      color:Color(0xFFDFFF9F),
                    )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timer,
                        color: Colors.white24,
                        ),
                        SizedBox(width:4),
                        Text('REST TIMER',
                        style: TextStyle(
                          color:Colors.white24,
                          fontWeight: FontWeight(700),
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFF2A2F26),
                        Color(0xFF1C1F1A),
                      ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Barbell Bench Press',
                                style:TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight(800),
                                  color:Colors.white,
                                )
                            ),
                          ),
                          Icon(Icons.more_horiz,
                            color: Colors.white),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16, right:16),
                      child: Text('Target: 4 Sets x 5-8 reps',
                      textAlign: TextAlign.start,
                      style:TextStyle(
                        color:Colors.white24,
                      )
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('SET',
                        style:TextStyle(
                          color: Colors.white24,
                        )
                        ),
                        Text('LBS',
                            style:TextStyle(
                              color: Colors.white24,
                            )
                        ),
                        Text('REPS',
                            style:TextStyle(
                              color: Colors.white24,
                            )
                        ),
                        Icon(Icons.check,
                              color: Colors.white24,
                            )

                      ],
                    )


                  ],
                )
              )

            ],
          ),
        ),


      ),




    );
  }
}


