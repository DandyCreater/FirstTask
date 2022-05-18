import 'dart:convert';
// import 'dart:html';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Models/TravelerMode.dart';
// import 'package:xml/xml.dart' as xml;
import 'package:http/http.dart' as http;
// import 'package:xml/xml_events.dart';
import 'package:xml2json/xml2json.dart';

class TravelerProvider with ChangeNotifier {
  Future<List<TravelerModel>> getContact() async {
    final Xml2Json xml2json = Xml2Json();
    try {
      var response = await http.get(
          Uri.parse("http://restapi.adequateshop.com/api/Traveler?page=2"));
      print(response);
      print(response.body);
      print(response.statusCode);
      xml2json.parse(response.body);

      if (response.statusCode == 200) {
        var jsonString = xml2json.toParker();
        List<TravelerModel> models = [];

        List parsedJson = json.decode(jsonString)["TravelerinformationResponse"]
            ["travelers"]["Travelerinformation"];
        // List parsedJson = jsonDecode(jsonString);
        parsedJson.forEach((travelerModel) {
          models.add(TravelerModel.fromJson(travelerModel));
        });
        return models;

      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
