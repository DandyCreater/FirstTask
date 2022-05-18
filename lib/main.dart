import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepage.dart';
import 'package:flutter_application_1/Pages/TravelerOutput.dart';
import 'package:flutter_application_1/Pages/UserInfo.dart';
import 'package:flutter_application_1/Pages/encrypt.dart';
import 'package:flutter_application_1/Provider/AuthProvider.dart';
import 'package:flutter_application_1/Provider/EncyptProvider.dart';
import 'package:flutter_application_1/Provider/TravelerProvider.dart';
import 'package:flutter_application_1/Provider/UserProvider.dart';
import 'package:flutter_application_1/Pages/Register.dart';
import 'package:flutter_application_1/Pages/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider()),
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
        ChangeNotifierProvider<TravelerProvider>(
            create: (context) => TravelerProvider()),
            ChangeNotifierProvider<EncryptProvider>(create: (context)=> EncryptProvider()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
          // home: HomePage(title: 'Flutter Demo Home Page'),
          routes: {
            '/': (context) => Register(),
            '/login': (context) => Login(),
            // '/regist': (context) => Register(),
            '/home': (context) => HomePage(),
            '/user': (context) => UserInfo(),
            '/traveler': (context) => TravelerOutput(),
            '/encrypt': (context) => encrypt(),
          }),
    );
  }
}
