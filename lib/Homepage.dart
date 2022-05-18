import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_3des/flutter_3des.dart';
import 'package:flutter_application_1/Provider/UserProvider.dart';
import 'package:flutter_application_1/Widgets/CustomCard.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  // String name;
  // String email;
  // String adderes;

  // HomePage({required this.name, required this.email, required this.adderes});
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // String texts = "my name is flutter";

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 300),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        ),
        Container(
            margin: EdgeInsets.only(top: 200),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomCard(
                      title: 'Encrypt',
                      Iconset: Icon(
                        Icons.ac_unit,
                        size: 100,
                        color: Colors.indigo,
                      ),
                      press: () {
                        Navigator.pushNamed(context, '/encrypt');
                      },
                    ),
                    CustomCard(
                      title: 'User Data',
                      Iconset: Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.indigo,
                      ),
                      press: () {
                        Navigator.pushNamed(context, '/user');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomCard(
                      title: 'List Data',
                      Iconset: Icon(
                        Icons.list,
                        size: 100,
                        color: Colors.indigo,
                      ),
                      press: () {
                        Navigator.pushNamed(context, '/traveler');
                      },
                    ),
                    CustomCard(
                      title: 'Log Out',
                      Iconset: Icon(
                        Icons.logout,
                        size: 100,
                        color: Colors.indigo,
                      ),
                      press: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/', (route) => false);
                      },
                    ),
                  ],
                ),
              ],
            ))
      ],
    ));
  }
}
