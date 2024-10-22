import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'NavBar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Apple Store",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25 ),
            ),
          ),

          actions: [
            IconButton(onPressed: () {},
                icon: Icon(Icons.notifications, size: 30,),
            alignment: Alignment.centerLeft,
            )
          ],
        ),


        body: Container(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const SizedBox(
                    height: 20),

                  //Top container start

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.black54,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],

                    ),
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.all(5),
                   child: Column(
                     children: [
                       Image.asset("assets/apple.png"),
                     ],
                   ),

                  ),
                  //Top container end

                  const SizedBox(
                    height: 40,
                  ),


                  //first container start****************************

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(2),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone16desert.png",
                                fit: BoxFit.cover,
                                height: 135,


                              ),
                              SizedBox(height: 1,),

                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 16 Pro', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),

                        ),
                      ),

                      // 1st container end ****************************


                      // 2st container start *************************

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },

                        child: Container(
                          decoration: BoxDecoration(


                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(2),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone6.jpeg",
                                fit: BoxFit.cover,
                                height: 135,

                              ),

                              SizedBox(height: 1,),
                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 16 Pro Max', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // 2st container end *************************

                  SizedBox(height: 30,),


                  // 3rd container start ************************

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone15pro.jpg",
                                fit: BoxFit.cover,
                                height: 120,


                              ),
                              SizedBox(height: 8,),

                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 15 Pro', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),

                        ),
                      ),

                      // 3rd container end ************************



                      // 4th container start ************************

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/iphonemax.jpeg",
                                fit: BoxFit.cover,
                                height: 110,
                              ),

                              SizedBox(height: 10,),
                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 15 Pro Max', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),

                  // 4th container end ************************


                  // 5th container start ************************

                  SizedBox(height: 30,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone15.jpeg",
                                fit: BoxFit.cover,
                                height: 120,



                              ),
                              SizedBox(height: 8,),

                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 15', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),

                        ),
                      ),

                      // 5th container end ************************


                      //6th container start **********************

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone15plus.jpeg",
                                fit: BoxFit.cover,
                                height: 120,
                              ),

                              SizedBox(height: 10,),
                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 15 Plus', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //6th container end **********************

                  SizedBox(height: 30,),

                  //7th container start **********************

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      InkWell(onTap:(){
                        setState(() {

            });
            },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/apple14.png",
                              fit: BoxFit.cover,
                                height: 120,


                              ),
                              SizedBox(height: 8,),

                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 14', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),

                        ),
                      ),

                      //7th container end **********************


                      //8th container start **********************

                      InkWell(onTap: (){
                        setState((){});
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone14.png",
                                fit: BoxFit.cover,
                                height: 120,
                              ),

                              SizedBox(height: 10,),
                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 14 Pro', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //8th container end **********************

                  SizedBox(height: 30,),

                  //9th container start **********************

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      InkWell(onTap: (){
                        setState(() {

                        });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          height: 185,
                          width: 150,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(5),

                          child: Column(
                            children: [
                              Image.asset("assets/iphone133.png",
                                fit: BoxFit.cover,
                                height: 120,


                              ),
                              SizedBox(height: 8,),

                              Container(
                                height: 20,
                                width: 150,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.8),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                child: const Center(child: Text('iphone 13', style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                              ),
                            ],
                          ),

                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(


                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        height: 185,
                        width: 150,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(5),

                        child: Column(
                          children: [
                            Image.asset("assets/iphone13pro.png",
                              fit: BoxFit.cover,
                              height: 120,
                            ),

                            SizedBox(height: 10,),
                            Container(
                              height: 20,
                              width: 150,
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.all(5),

                              decoration: BoxDecoration(
                                border: Border.all(width: 0.8),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.red,
                                  ),
                                ],
                              ),

                              child: const Center(child: Text('iphone 13 Pro', style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),)),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
