import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 246, 246, 242),

          body: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  //itemCount: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      child: TextButton(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                child:  Center(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(35,70,35,10),
                                    child: Text(
                                      'Your Food No: ${index}',
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                height: 200.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(1.0,5.0),
                                    )
                                  ]
                                )
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: -40,
                              child: Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        onPressed: (){
                          print('hi1');
                        },
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  //itemCount: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      child: TextButton(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                child:  Center(
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(35,70,35,10),
                                    child: Text(
                                      'Your Food No: ${index}',
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                height: 200.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(1.0,5.0),
                                      )
                                    ]
                                )
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: -40,
                              child: Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        onPressed: (){
                          print('hi1');
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
