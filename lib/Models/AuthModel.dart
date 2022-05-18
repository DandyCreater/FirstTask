// class AuthModel{
//   return 
// }



// class AuthModel {
//   late String name;
//   late String email;
//   late String password;

//   AuthModel({required this.name, required this.email, required this.password});

//   AuthModel.getUser(Map<String, dynamic> Object) {
//     AuthModel(
//         name: Object['name'],
//         email: Object['email'],
//         password: Object['password']);

//     Map<String, dynamic> createUser() {
//       return {
//         'name': name,
//         'email': email,
//         'password': password,
//       };
//     }
//   }
// }

// import 'package:xml/xml.dart';

// class AuthModel {
//   String name;
//   String email;
//   String adderes;

//   AuthModel(this.name, this.email, this.adderes);

//   factory AuthModel.fromJson(Map<String, dynamic> json) {
//     return AuthModel(
//       json['name'],
//       json['email'],
//       json['adderes'],
//     );
//   }
// }

// import 'dart:io';
// import 'package:http/http.dart';
// import 'package:xml/xml.dart' as xml;

// class AuthModel {
//   String id;
//   String name;
//   String email;
//   String adderes;
//   String createdat;

//   AuthModel(this.id, this.name, this.email, this.adderes, this.createdat);

//   Future<HttpClientResponse> _createUser() async {
//     var builder = new xml.XmlBuilder();
//     builder.processing('xml', 'version="1.0" encoding="iso-8859-9"');
//     builder.element("Travelerinformation ", nest: () {
//       builder.element("id", nest: 0);
//       builder.element("name", nest: "");
//       builder.element("email", nest: "");
//       builder.element("adderes", nest: "");
//     });

//     var travelerinfomrationxml = builder.build();
//     String _uriMsg = travelerinfomrationxml.toString();
//     print("_uriMsg : &_uriMsg");

//     var _uri = Uri.parse("http://restapi.adequateshop.com/api/Traveler");
//     var _response = await post(_uri);
//     print("_responseOtp: $_response");
//   }
// }

// import 'package:xml/xml.dart';

// class AuthModel {
//   String id;
//   String name;
//   String email;
//   String adderes;
//   String created;

//   AuthModel(this.id, this.name, this.email, this.adderes, this.created);

//   factory AuthModel.getUser(XmlElement travelElement) {
//     return AuthModel(
//         travelElement.getAttribute('id').toString(),
//         travelElement.getAttribute('name').toString(),
//         travelElement.getAttribute('email').toString(),
//         travelElement.getAttribute('adderes').toString(),
//         travelElement.getAttribute('createdat').toString());
//   }

//   Future<AuthModel> toUser() async {
//     var builder = new XmlBuilder();

//     return {
//  builder.processing('xml', "version=1.0");
//     builder.element('id', nest: () {
//       builder.element('name', nest: "");
//       builder.element('email', nest: "");
//       builder.element('adderes', nest: "");
//       builder.element('createdat', nest: "");
//     });
//     }

//     var travelxml = builder.build();
//     String _uriMsg = travelxml.toString();

//   }

  // XmlElement toUser() {
  //   return {

  //   };
  // }
  // Future<AuthModel> toUser(String name, String email, String adderes) async {

  // }
// }
