import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const foods());
}

class foods extends StatelessWidget {
  const foods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: const Icon(Icons.arrow_back_ios,
          color: Colors.black),
          title: const Text('Spicy Chicken  |',
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black),
          ),
          backgroundColor:  Colors.transparent,

        ),
        body: const foodspage(),
      ),
    );
  }
}

class foodspage extends StatefulWidget {
  const foodspage({Key? key}) : super(key: key);

  @override
  _foodspageState createState() => _foodspageState();
}

class _foodspageState extends State<foodspage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        body: ListView.builder(
          //itemCount: 40,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        TextButton(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                  child:  Center(
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(30,70,30,10),
                                      child: Text(
                                        'Your Food No: ${index}',
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black,
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
                                          color: const Color.fromARGB(57, 57, 57, 10).withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 60,
                                          offset: const Offset(0.0,30.0),
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
                                        image: NetworkImage('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                                        fit: BoxFit.fill,
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
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70.0,
                        ),
                        TextButton(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                  child:  Center(
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(30,70,30,10),
                                      child: Text(
                                        'Your Food No: ${index}',
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black,
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
                                          color: const Color.fromARGB(57, 57, 57, 10).withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 60,
                                          offset: const Offset(0.0,30.0),
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
                                        image: NetworkImage('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                                        fit: BoxFit.fill,
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
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

