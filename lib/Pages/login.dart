import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/AuthModel.dart';
import 'package:flutter_application_1/Provider/AuthProvider.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  // const Login({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController(text: '');

  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    // var authProvider = Provider.of<AuthProvider>(context);

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

    Widget passwordTextFromField() => TextFormField(
          controller: passwordController,
          decoration: InputDecoration(
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true,
            // isDense: true,
            isCollapsed: true,
            hintText: "Password",
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

    Widget SignInButton() => SizedBox(
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
            // AuthModel? user = await authProvider.login(
            //   emailController.text,
            //   passwordController.text,
            // );
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
              "LOG IN",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            emailTextFromField(),
            SizedBox(
              height: 20,
            ),
            passwordTextFromField(),
            SizedBox(
              height: 40,
            ),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}
