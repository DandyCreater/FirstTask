import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepage.dart';
import 'package:flutter_application_1/Models/AuthModel.dart';
import 'package:flutter_application_1/Models/UserModel.dart';
import 'package:flutter_application_1/Provider/AuthProvider.dart';
import 'package:flutter_application_1/Provider/UserProvider.dart';
import 'package:provider/provider.dart';
import 'package:xml/xml.dart';

class Register extends StatelessWidget {
  // final builder = XmlBuilder();
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');

  final TextEditingController adderesController =
      TextEditingController(text: '');

  // const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);

    var userProvider = Provider.of<UserProvider>(context);
    Widget nameTextFromField() => TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true,
            // isDense: true,
            isCollapsed: true,
            hintText: "Name",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.all(12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  BorderSide(color: Colors.blue.withOpacity(0.2), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.blue.withOpacity(0.2),
                  width: 1,
                )),
          ),
        );

    Widget emailTextFromField() => TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true,
            // isDense: true,
            isCollapsed: true,
            hintText: "Email",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.all(12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  BorderSide(color: Colors.blue.withOpacity(0.2), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.blue.withOpacity(0.2),
                  width: 1,
                )),
          ),
        );

    Widget adderesTextFromField() => TextFormField(
          controller: adderesController,
          decoration: InputDecoration(
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true,
            // isDense: true,
            isCollapsed: true,
            hintText: "Adderes",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.all(12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  BorderSide(color: Colors.blue.withOpacity(0.2), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.blue.withOpacity(0.2),
                  width: 1,
                )),
          ),
        );

    Widget RegistButton() => SizedBox(
        height: 40,
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              backgroundColor: MaterialStateProperty.all(Colors.indigo)),
          onPressed: () async {
            // AuthModel user = (
            UserModel? user = (await authProvider.register(
              nameController.text,
              emailController.text,
              adderesController.text,
            ));
            if (user == null)
              print(user);
            else {
              print(user);
              userProvider.user = user;
              Navigator.pushNamed(context, '/home');
            }
          },
          child: Text(
            "Log In",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ));

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Register",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            nameTextFromField(),
            SizedBox(
              height: 20,
            ),
            emailTextFromField(),
            SizedBox(
              height: 20,
            ),
            adderesTextFromField(),
            SizedBox(
              height: 40,
            ),
            RegistButton(),
          ],
        ),
      ),
    );
  }
}
