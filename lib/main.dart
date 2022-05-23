import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taptake_wear_os/screens/recent_orders.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const TapTake());
}

class TapTake extends StatelessWidget {
  const TapTake({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
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
            backgroundColor: Colors.black,
            primarySwatch: Colors.blue,
            dividerColor: Colors.yellowAccent,
            textTheme: const TextTheme(
                headline1: TextStyle(
                    color: Colors.yellow,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Kanit'),
                headline2: TextStyle(
                    color: Colors.yellow,
                    fontSize: 34,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Kanit'),
                    )),
                
        home: const SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    void take() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RecentOders()));
    }
    return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 1.0),
        duration: const Duration(milliseconds: 500),
        builder: (BuildContext context, double opacity, Widget? child) {
          return Opacity(
            opacity: opacity,
            child: GestureDetector(
              onTap: take,
              child: Center(
                    child: Text(
                  "TapTake",
                  style: Theme.of(context).textTheme.headline1,
                )),
            ),
          );
        });
  }
}
