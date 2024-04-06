
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personalized_development_recommendor/utils/variables.dart';

import 'package:http/http.dart' as http;

class AuthService {
  signup({
    required BuildContext context,
    required String email,
    required String name,
    required String pass,
  }) async {
    try {
      http.Response res = await http.get(
        Uri.parse(
            'http://niranjankolpe.pythonanywhere.com/recommend_data/$email/$name/$pass'),);
      print("status code is " + res.statusCode.toString());
    } catch (e) {
      print('error occured : $e');
    }
  }

  emailavailable({
    required BuildContext context,
    required String email,
  }) async {
    try {
      http.Response res = await http.get(
        Uri.parse(
            'http://niranjankolpe.pythonanywhere.com/emailavailable/$email'),);
      print("status code is " + res.statusCode.toString());
      if (res.statusCode.toString() == "200") {
        variables.email = email;

        Navigator.pushNamed(context, "emailotp");
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Use another email to register"),
        ));
        Navigator.pop(context);
        Navigator.pushNamed(context, "signup");
      }
    } catch (e) {
      print('error occured : $e');
    }
  }


  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.get(
        Uri.parse(
            'http://niranjankolpe.pythonanywhere.com/signin/$email/$password'),
      );
      print(res.body.toString());
      if (res.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(res.body.toString())));
        Navigator.pop(context);
        Navigator.pushNamed(context, 'home');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("error" + e.toString())));
    }
  }

  academicPerformance({
    required BuildContext context,
    required String email,
    required int python,
    required int html,
    required int java,
    required int c,
    required int maths,
    required int dsa,
    required int oops,
    required int communication,
    required int writting,
    required int reading,}) async {
    try {
      http.Response res = await http.get(
        Uri.parse(
            'http://niranjankolpe.pythonanywhere.com/update_AcademicPerformance/$email/$html/$python/$java/$c/$dsa/$oops/$maths/$communication/$writting/$reading'),
      );
      print(res.body.toString());
      if (res.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(res.body.toString())));
        Navigator.pop(context);
        Navigator.pushNamed(context, 'goal');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("error" + e.toString())));
    }
  }

  goal({
    required BuildContext context,
    required String email,
    required int domain,
    required int course,
    required int availabletime,
    }) async {
    try {
      http.Response res = await http.get(
        Uri.parse(
            'http://niranjankolpe.pythonanywhere.com/update_StudentGoals/$email/$domain/$course/$availabletime'),
      );
      print(res.body.toString());
      if (res.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(res.body.toString())));
        Navigator.pop(context);
        Navigator.pushNamed(context, 'weakness');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("error" + e.toString())));
    }
  }
}