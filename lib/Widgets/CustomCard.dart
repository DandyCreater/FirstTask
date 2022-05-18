import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String title;
  Icon Iconset;
  Function() press;

  CustomCard({required this.title, required this.Iconset, required this.press});
  // const CustomCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.only(top: 250),
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child: Column(
          children: [
            Iconset,
            // Icon(
            //  Iconset,
            //   color: Colors.indigo,
            //   size: 100,
            // ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
