import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Models/UserModel.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';
import 'package:xml/xml.dart';

class AuthProvider with ChangeNotifier {
  Future<UserModel?> register(String name, String email, String adderes) async {
    final Xml2Json xml2json = Xml2Json();
    // final builder = new XmlBuilder();

    try {
      var data = '''<?xml version ="1.0" encoding="UTF-8"?>
        <Travelerinformation>  
          <name>$name</name> 
          <email>$email</email> 
          <adderes>$adderes</adderes>
        </Travelerinformation>
        ''';

      var response = await http
          .post(Uri.parse("http://restapi.adequateshop.com/api/Traveler/"),
              // body: body,
              body: data,
              headers: {
            'Content-type': 'text/xml',
          });

      xml2json.parse(response.body);

      print(response);
      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 201) {
        var jsonString = xml2json.toParker();
        return UserModel?.fromJson(
            json.decode(jsonString)['Travelerinformation']);
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
