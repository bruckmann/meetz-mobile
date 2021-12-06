/*
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meetz/core/app_gradients.dart';
import 'package:meetz/pages/home/home_page.dart';
import 'package:meetz/pages/signup/widgets/input/input_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'widgets/button/button_widget.dart';

class CreateRoomPage extends StatefulWidget {
  const CreateRoomPage({ Key? key }) : super(key: key);

  @override
  _CreateRoomPageState createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  final _formkey = GlobalKey<FormState>();
  final _imageController = TextEditingController();
  final _maxPeopleController = TextEditingController();
  final _roomNumberController = TextEditingController();
  final _floorNumberController = TextEditingController();
  final _nameRoomController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _metersRoomController = TextEditingController();
  final _hasAirController = TextEditingController();
  final _hasPaintingController = TextEditingController();
  final _hasDatashowController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: AppGradients.linear,
                )),
            Form(
              key: _formkey,
                child: Center(
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30.0),
                        InputWidget(
                          obscureText: false,
                          label: "Name",
                          placeHolder: "Enter your full name",
                          icon: Icons.person,
                          controller: _imageController,
                          keyboardType: TextInputType.text,
                          validator: (name){
                            if (name == null || name.isEmpty){
                              return ("Please, entrer your name");
                            }
                            return null;
                          }

                        ),
                        SizedBox(height: 30.0),
                       InputWidget(
                          obscureText: false,
                          label: "Email",
                          placeHolder: "Enter your Email",
                          icon: Icons.email,
                          controller: _maxPeopleController,
                          keyboardType: TextInputType.number,
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return ("Please, enter your E-mail");
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 30.0),
                         InputWidget(
                          obscureText: true,
                          label: "Password",
                          placeHolder: "Enter your password",
                          icon: Icons.lock,
                          controller: _roomNumberController,
                          keyboardType: TextInputType.number,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return ("Please, enter your password");
                            }
                            return null;
                          },
                        ),
                        InputWidget(
                          obscureText: true,
                          label: "Password",
                          placeHolder: "Enter your password",
                          icon: Icons.lock,
                          controller: _floorNumberController,
                          keyboardType: TextInputType.number,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return ("Please, enter your password");
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 30),
                        //RememberMeWidget(),
                        RegisterButtonWidget(
                            text: 'REGISTER',
                            onPressed: () async {
                              FocusScopeNode currentFocus =
                                  FocusScope.of(context);
                              if (_formkey.currentState!.validate()) {
                                var response = await signup();
                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                if (response != null) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage(id: response)));
                                } else {
                                  _passwordController.clear();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              }
                            })
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  final snackBar = SnackBar(
      content: Text("Algum campo invalido", textAlign: TextAlign.center),
      backgroundColor: Colors.redAccent);

  Future<String> signup() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse("http://localhost:3000/user");

    Map data = {
    'user': {
      'name': _nameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
      'userRole': 'testUser'
    }
  };
    String body = json.encode(data);

    http.Response? response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body);
    if (response.statusCode == 201) {
       await sharedPreferences.setString(
          'token', 'token'); 
      
    var formatedResponse = response.body.toString().split(',');

    String Token = "${formatedResponse[0]}}";

      return Token;
    } else {
      throw("error");
    }
  }
} */