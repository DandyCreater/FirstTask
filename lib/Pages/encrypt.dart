import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_3des/flutter_3des.dart';
import 'package:flutter_application_1/Provider/EncyptProvider.dart';
import 'package:flutter_application_1/Widgets/CustomButton.dart';
import 'package:provider/provider.dart';


class encrypt extends StatefulWidget {
  // const encrypt({ Key? key }) : super(key: key);

  @override
  _encryptState createState() => _encryptState();
}

String _string = "Kalimat ini akan di enkripsi";

class _encryptState extends State<encrypt> {
  static String _key = "702040801020305070B0D1101020305070B0D1112110D0B0";
  static const _iv = "070B0D1101020305";

  Uint8List? _encrypt;
  String _decrypt = '';
  String _encryptHex = '';
  String _decryptHex = '';
  String _encryptBase64 = '';
  String _decryptBase64 = '';
  String _text = _string;

  //encrypt
  Future<void> encrypt() async {
    try {
      if (_text.isEmpty) {
        _text = _string;
      }
      _encrypt = await Flutter3des.encrypt(_text, _key, iv: _iv);
      setState(() {
        _string = _encrypt.toString();
      });
      
    } catch (e) {
      print(e);
    }
  }

  //encrypt Hex
  Future<void> encryptHex() async {
    try {
      if (_text.isEmpty) {
        _text = _string;
      }
      _encryptHex = await Flutter3des.encryptToHex(_text, _key, iv: _iv);
      setState(() {
        _string = _encryptHex;
      });
    } catch (e) {
      print(e);
    }
  }

  //encrypt Base 64
  Future<void> encryptBase64() async {
    try {
      if (_text.isEmpty) {
        _text = _string;
      }
      _encryptBase64 = await Flutter3des.encryptToBase64(_text, _key, iv: _iv);
    
      setState(() {
        _string = _encryptBase64;
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> decrypt() async {
    if (_text.isEmpty) {
      _text = _string;
    }
    try {
      _encrypt = await Flutter3des.encrypt(_text, _key, iv: _iv);
      _decrypt = await Flutter3des.decrypt(_encrypt!, _key, iv: _iv);
      setState(() {
        _string = _decrypt;
      });
    } catch (e) {
      print(e);
    }
  }

  //decryptHex
  Future<void> decryptHex() async {
    if (_text.isEmpty) {
      _text = _string;
    }
    try {
      _encryptHex = await Flutter3des.encryptToHex(_text, _key, iv: _iv);
      _decryptHex =
          await Flutter3des.decryptFromHex(_encryptHex, _key, iv: _iv);
      setState(() {
        _string = _decryptHex;
      });
    } catch (e) {
      print(e);
    }
  }

  //decrypt Base 64
  Future<void> decryptBase64() async {
    if (_text.isEmpty) {
      _text = _string;
    }
    try {
      _encryptBase64 = await Flutter3des.encryptToBase64(_text, _key, iv: _iv);
      _decryptBase64 =
          await Flutter3des.decryptFromBase64(_encryptBase64, _key, iv: _iv);
      setState(() {
        _string = _decryptBase64;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var encryptProvider = Provider.of<EncryptProvider>(context);
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
            margin: EdgeInsets.only(top: 200),
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
                // Consumer<EncryptProvider>(
                //   builder: (context, enkripsi, child) =>  Text(
                //     // encryptProvider.isi.toString(),
                //     enkripsi.isi.toString(),
                //     style: TextStyle(
                //         fontSize: 21,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.indigo),
                //   ),),
                Text(
                  _string,
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text("Encrypt & Decrypt",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: "Encrypt",
                          press: encrypt,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomButton(title: "Decrypt", press: decrypt),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("EncryptHex & DecryptHex ",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: "EncryptHex",
                          press: encryptHex,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomButton(title: "DecryptHex", press: decryptHex),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("EncryptBase64 & DecryptBase64",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: "EncryptBase64",
                          press: encryptBase64,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomButton(
                            title: "DecryptBase64", press: decryptBase64),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Consumer<EncryptProvider>(builder: (context, encrypt, _)=>
                    // CustomButton(title: "Test Button", press: encryptProvider.isPressed! ==  )),
                    // Consumer<EncryptProvider>(
                    //   builder: ((context, encrypt, _) => Switch(value: encrypt.isPressed, onChanged: (value){
                    //     setState(() {
                    //       encryptProvider.isPressed = value;
                    //     });
                    //   })),
                    // ),

                    //  Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Consumer<EncryptProvider>(
                    //       builder: ( context, enkrip, child)=>  CustomButton(
                    //         title: "Encrypt Test",
                    //         press: (){
                    //           enkrip.isPressed = 0;
                    //         },
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Consumer<EncryptProvider>(
                    //       builder: ( context, enkrip, child)=>  CustomButton(
                    //         title: "Decrypt Test",
                    //         press: (){
                    //           enkrip.isPressed = 1;
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
