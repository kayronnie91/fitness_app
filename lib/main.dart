import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              leading: Icon(Icons.menu, color: Color(0xFFBFFF00)),
              title: Text(
                'VELOCITY',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFFBFFF00),
                  letterSpacing: 2.4,
                  fontWeight: FontWeight(800),
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('images/julia_avatar.jpg'),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upper Body Power',
                        style: TextStyle(
                          fontWeight: FontWeight(800),
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'WEEK 4 - DAY 2',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight(400),
                          color: Color(0xFFABABA6),
                        ),
                      ),

                      SizedBox(height: 18),

                      // TIMER
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color(0xFF2A2F26),
                            Color(0xFF1C1F1A),
                          ]),
                        ),
                        child: Column(
                          children: [
                            Text('01:45',
                                style: TextStyle(
                                    fontSize: 48,
                                    color: Color(0xFFDFFF9F))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.timer, color: Colors.white24),
                                SizedBox(width: 4),
                                Text('REST TIMER',
                                    style: TextStyle(
                                        color: Colors.white24,
                                        fontWeight: FontWeight(700))),
                              ],
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 32),

                      // SECOND CARD (UNCHANGED)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color(0xFF2A2F26),
                            Color(0xFF1C1F1A),
                          ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text('Barbell Bench Press',
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight(800),
                                              color: Colors.white))),
                                  Icon(Icons.more_horiz, color: Colors.white)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 16, right: 16),
                              child: Text(
                                'Target: 4 Sets x 5-8 reps',
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                            SizedBox(height: 16),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(25, 8, 25, 8),
                              child: Row(
                                children: [
                                  Expanded(child: Text('SET', style: TextStyle(color: Colors.white24))),
                                  Expanded(child: Text('LBS', style: TextStyle(color: Colors.white24))),
                                  Expanded(child: Text('REPS', style: TextStyle(color: Colors.white24))),
                                  Expanded(child: Icon(Icons.check, color: Colors.white24)),
                                ],
                              ),
                            ),

                            // rows
                            for (int i = 0; i < 3; i++)
                              Padding(
                                padding:
                                EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius:
                                      BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        Expanded(child: Text('1', style: TextStyle(color: Colors.white))),
                                        Expanded(child: Text('225', style: TextStyle(color: Colors.white))),
                                        Expanded(child: Text('8', style: TextStyle(color: Colors.white))),
                                        Expanded(child: Icon(Icons.check_circle, color: Colors.greenAccent)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,
                                      color: Colors.greenAccent),
                                  SizedBox(width: 3),
                                  Text('ADD SET',
                                      style: TextStyle(
                                          color: Colors.greenAccent)
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 32),

                      // THIRD CARD
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFF2A2F26),
                            Color(0xFF1C1F1A),
                          ]),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // FIXED padding
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                        'Incline Dumbbell Press',
                                        style: TextStyle(
                                            fontSize: 28,
                                            color: Colors.white,
                                            fontWeight: FontWeight(800)),
                                      )),
                                  Icon(Icons.more_horiz,
                                      color: Colors.white),
                                ],
                              ),
                            ),

                            Padding(
                              padding:
                              EdgeInsets.only(left: 16, right: 16),
                              child: Text(
                                'Target: 3 Sets x 8-12 Reps',
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),

                            SizedBox(height: 16),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(25, 8, 25, 8),
                              child: Row(
                                children: [
                                  Expanded(child: Text('SET', style: TextStyle(color: Colors.white24))),
                                  Expanded(child: Text('SET', style: TextStyle(color: Colors.white24))),
                                  Expanded(child: Text('SET', style: TextStyle(color: Colors.white24))),
                                  Expanded(child: Icon(Icons.check, color: Colors.white24)),
                                ],
                              ),
                            ),

                            // FIXED ROW
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                    BorderRadius.circular(8)),
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      Expanded(child: Text('1', style: TextStyle(color: Colors.white24))),
                                      Expanded(child: Text('85', style: TextStyle(color: Colors.white24))),
                                      Expanded(child: Text('10', style: TextStyle(color: Colors.white24))),
                                      Expanded(child: Icon(Icons.circle, color: Colors.white24)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            )
        )
    );
  }
}