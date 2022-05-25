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
              headline3: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Kanit'),
              bodyText1: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
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
    void takePedidos() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RecentOders()));
    }

    void takeEntregas() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RecentOders()));
    }

    return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 1.0),
        duration: const Duration(milliseconds: 500),
        builder: (BuildContext context, double opacity, Widget? child) {
          return DecoratedBox(
            decoration: const BoxDecoration(color: Colors.black),
            child: Opacity(
              opacity: opacity,
              child: GestureDetector(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "TapTake",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      ElevatedButton(
                          
                          onPressed: takePedidos,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            )),
                            backgroundColor: MaterialStateProperty.all(Colors.yellow),
                          ), child: Text("Pedidos", style: Theme.of(context).textTheme.headline3),),
                      ElevatedButton(
                          
                          onPressed: takeEntregas,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            )),
                            backgroundColor: MaterialStateProperty.all(Colors.yellow),
                          ), child: Text("Entregas", style: Theme.of(context).textTheme.headline3),),
                    ]),
              ),
            ),
          );
        });
  }
}
