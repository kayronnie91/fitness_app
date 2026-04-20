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



                      Container( // THIS IS THE SECOND CARD HOLDING THE ROWS //
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFF2A2F26),
                                  Color(0xFF1C1F1A),
                                ]
                            ),
                          ),

                          child: Column(  // THIS IS THE COLUMN HOLDING THE ROWS IN THE SECOND CARD //
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),

                                // CARD TITLE ROW

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
                                    ]
                                ),

                                // TARGET TEXT ROW

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

                              // KPI SET LBS REPS ROW

                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Text('SET',
                                          style:TextStyle(
                                            color: Colors.white24,
                                          )
                                      ),
                                    ),
                                    Expanded(
                                      child: Text('LBS',
                                          style:TextStyle(
                                            color: Colors.white24,
                                          )
                                      ),
                                    ),
                                    Expanded(
                                      child: Text('REPS',
                                          style:TextStyle(
                                            color: Colors.white24,
                                          )
                                      ),
                                    ),
                                    Expanded(
                                      child: Icon(Icons.check,
                                        color: Colors.white24,
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              // END OF KPI SET LBS REPS ROW

                              // START FIRST BLACK BACKGROUND CONTAINER ROW

                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Expanded(child: Text('1')),
                                        Expanded(child: Text('225')),
                                        Expanded(child: Text('8')),
                                        Expanded(child: Icon(Icons.check_circle,
                                        size:30,
                                        color:Colors.greenAccent,
                                        ),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              // END OF FIRST BLACK BACKGROUND CONTAINER ROW
                              SizedBox(height:8),

                             // THIS IS THE SECOND BLACK CONTAINER
                              Container(
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Expanded(child: Text('1')),
                                        Expanded(child: Text('225')),
                                        Expanded(child: Text('8')),
                                        Expanded(child: Icon(Icons.check_circle,
                                            size:20,
                                            color:Colors.white)
                                        ),
                                      ],
                                    ),
                                  )
                              )



                            ],
                          )
                      ) // THIS IS WHERE THE SECOND CARD ENDS //

                    ]
                )
            )
        )
    );
  }
}