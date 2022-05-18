import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  Function() press;

  CustomButton({required this.title, required this.press});
  // const CustomButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 120,
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.indigo)),
        onPressed: press,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
