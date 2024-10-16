import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        drawer: NavBar(),
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
                  SizedBox(
                    height: 20),

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
                   child: Image.network('https://rivermall.ua/wp-content/uploads/2023/11/1420x1010_river_web.jpg'),

                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                           Container(
                             decoration: BoxDecoration(
                               border: Border.all(width: 1),
                               borderRadius: BorderRadius.circular(9),

                             ),

                              height: 200,
                              width: 200,
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.all(5),
                              child: Image.network('https://systematixmedia.com/storage/product_varient/large/MTP93HN-A_1_20230913124223.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                    ],
                  ),

                  //test container

                  Row(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 20,
                        width: 197,
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.all(5),

                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,


                             // offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        child: Center(child: Text('iphone 15 Plus', style: TextStyle(fontSize: 13, backgroundColor: Colors.red),)),
                      ),
                    ],

                  ),
                  //end test container

                  //start 2nd container



                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(9),

                            ),

                            height: 200,
                            width: 200,
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(5),
                            child: Image.network('https://systematixmedia.com/storage/product_varient/large/MTP93HN-A_1_20230913124223.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),

                  //End 2nd container



                ],
              ),
            ),
          ),


        ),

      ),
    );
  }
}
