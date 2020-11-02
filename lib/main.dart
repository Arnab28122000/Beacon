import 'dart:io';

import 'package:beacon/screens/book.dart';
import 'package:beacon/screens/detail_page.dart';
import 'package:beacon/screens/foodHomePage.dart';
import 'package:beacon/screens/salonHome.dart';
import 'package:beacon/theme/theme.dart';

import 'screens/slider.dart';
import 'screens/home_page.dart';
import 'screens/signin.dart';
import 'screens/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  return MultiProvider(
      providers: [
        Provider<SignInPage>(create: (_) => SignInPage()),
      ],
        child: 
      Consumer<SignInPage>(
        builder: (ctx, auth, _)=> 
      MaterialApp(
        title: 'Beacon',
        theme:  ThemeData(primaryColor: Colors.red[200]),//AppTheme.lightTheme,
        home: Intro(),
        routes: {
          SignInPage.routeName: (ctx) => SignInPage(),
          SignUpScreen.routeName: (ctx) => SignUpScreen(),
          HomePage.routeName: (ctx) => HomePage(),
          DetailPage.routeName: (ctx) => DetailPage(),
          FoodHomePage.routeName: (ctx) => FoodHomePage(),
          SalonHomePage.routeName: (ctx) => SalonHomePage(),
          BookPage.routeName: (ctx) => BookPage(),
        },
        ),
      )
  );
  }
}

