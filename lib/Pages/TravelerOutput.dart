import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/TravelerMode.dart';
import 'package:flutter_application_1/Provider/TravelerProvider.dart';
import 'package:flutter_application_1/Widgets/CustomTraveler.dart';
import 'package:provider/provider.dart';

class TravelerOutput extends StatelessWidget {
  // const TravelerOutput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var travelProvider = Provider.of<TravelerProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "OUTPUT XML FILE",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 800,
                child: FutureBuilder<List<TravelerModel?>>(
                    future: travelProvider.getContact(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView(
                            children: snapshot.data!.map((travelerModel) {
                          return Container(
                              padding: EdgeInsets.only(
                                  bottom: 20, left: 20, right: 20),
                              child: CustomTraveler(travelerModel!));
                        }).toList());
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
               
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
