// ignore_for_file: sort_child_properties_last

import 'dart:math';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Flutter Assingnment'),
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        //    color: Color.fromRGBO(209, 133, 133, 1),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(209, 133, 133, 1),
                            boxShadow: [BoxShadow()]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 700,
                                height: 22,
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                color: Color.fromRGBO(168, 216, 173, 1),
                                width: double.infinity,
                                height: 28,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      child: Container(
                        color: Color.fromRGBO(209, 133, 133, 1),
                        child: SizedBox(
                          height: 142,
                          width: 1200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(children: <Widget>[
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Transform.translate(
                                      offset: Offset(0, -20),
                                      child: Container(
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                        width: 200,
                                        height: 32,
                                      ),
                                    ))
                              ]),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  color: Color.fromRGBO(168, 216, 173, 1),
                                  width: 4890,
                                  height: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
