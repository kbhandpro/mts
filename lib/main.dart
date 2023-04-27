import 'package:flutter/material.dart';
import 'package:mts_demo/screen/home.dart';
import 'package:mts_demo/screen/login.dart';
import 'package:mts_demo/screen/walktrough.dart';
import 'package:mts_demo/screen/walktrough2.dart';
import 'package:mts_demo/test/test.dart';

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
      // initialRoute: '/walktrough',
      initialRoute: '/walktrough',

      routes: {
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
        '/walktrough': (context) => WalkTrough2(),
        // '/walktrough': (context) => WalkTrough(),
        '/test': (context) => Test(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
