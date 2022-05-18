import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/TravelerMode.dart';

class CustomTraveler extends StatelessWidget {
  // const CustomTraveler({ Key? key }) : super(key: key);

  final TravelerModel travelerModel;

  CustomTraveler(this.travelerModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            travelerModel?.adderes ?? '',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            travelerModel?.created ?? '',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            travelerModel?.email ?? '',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            travelerModel?.id ?? '',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            travelerModel?.name ?? '' ,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
