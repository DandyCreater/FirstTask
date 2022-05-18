import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/UserProvider.dart';

import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
  // const UserInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
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
            padding: EdgeInsets.all(20),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "User Id : ",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userProvider.user.id,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Name : ",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userProvider.user.name,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Email : ",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userProvider.user.email,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Address : ",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userProvider.user.adderes,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Created At : ",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        userProvider.user.created,
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
