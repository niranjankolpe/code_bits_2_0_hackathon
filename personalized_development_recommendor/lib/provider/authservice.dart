import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class AuthService{
  signup({
    required BuildContext context,
    required String email,
    required String name,
    required String pass,
  })async {
    try {
      http.Response res = await http.get(
        Uri.parse('http://10.0.2.2:8000/recommend_data/$email/$name/$pass'),);
      print("status code is " + res.statusCode.toString());

    } catch (e) {
      print('error occured : $e');
    }
  }

  emailavailable({
    required BuildContext context,
    required String email,
  })async {
    try {
      http.Response res = await http.get(
        Uri.parse('http://10.0.2.2:8000/emailavailable/$email'),);
      print("status code is " + res.statusCode.toString());
      if (res.statusCode.toString() == "200"){
        Navigator.pushNamed(context, "emailotp");}
      else{
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Use another email to register"),
        ));
        Navigator.pushNamed(context, "signup");
      }

    } catch (e) {
      print('error occured : $e');

    }
  }







  // CheckEmailAvailable({
  //   required BuildContext context,
  //   required User user,
  // }) async {
  //   try {
  //     http.Response res = await http.post(
  //       Uri.parse('${Constants.uri}/api/checkemail'),
  //       body: jsonEncode({
  //         "email" : user.email,
  //       }),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',},
  //     );
  //     print("status code is" +res.statusCode.toString());
  //     httpErrorHandle(
  //         response: res,
  //         context: context,
  //         onSuccess: () {
  //           showSnackBar(context, "Email Available please verify email");
  //         }
  //     );
  //     print(res.statusCode);
  //     if (res.statusCode==200){
  //       Navigator.pushNamed(context,'verifyemail', arguments: user,);
  //     }
  //
  //   }catch(e) {
  //     print('error occured');
  //     showSnackBar(context, e.toString());
  //   }
  // }
  //
  // signUpUser({
  //   required BuildContext context,
  //   required String email,
  //   required String password,
  //   required String firstName,
  //   required String lastName,
  //   required String isPhoneVerify,
  //   required String isEmailVerify,
  //   required String userType
  // }) async {
  //   try {
  //     User user = User(
  //         firstName : firstName,
  //         lastName: lastName,
  //         email: email,
  //         password: password,
  //         userType: userType,
  //         isEmailVerify: isEmailVerify,
  //         isPhoneVerify: isPhoneVerify);
  //
  //     http.Response res = await http.post(
  //       Uri.parse('${Constants.uri}/api/signup'),
  //       body: user.toJson(),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',},
  //     );
  //
  //     httpErrorHandle(
  //         response: res,
  //         context: context,
  //         onSuccess: () {
  //           showSnackBar(context, "Account created! Login with the same credentials!");
  //         }
  //
  //     );
  //   }catch(e) {
  //     print('error occured');
  //     showSnackBar(context, e.toString());
  //   }
  // }
  //
  // void signInUser({
  //   required BuildContext context,
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     var userProvider = Provider.of<UserProvider>(context,listen:false);
  //     final navigator = Navigator.of(context);
  //     http.Response res = await http.post(
  //       Uri.parse('${Constants.uri}/api/signin'),
  //       body: jsonEncode({
  //         "email" : email,
  //         "password": password,
  //       }),
  //       headers: <String,String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //     );
  //
  //     httpErrorHandle(
  //         response: res,
  //         context: context,
  //         onSuccess: () async{
  //           SharedPreferences prefs = await SharedPreferences.getInstance();
  //           userProvider.setUser(res.body);
  //           await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
  //           navigator.pushAndRemoveUntil(
  //             MaterialPageRoute(
  //                 builder: (context) => const MyApp()),
  //                 (route) => false,);
  //         }
  //     );
  //     if (res.statusCode==200){
  //       Navigator.pushNamed(context, 'app');
  //     }
  //
  //   }catch(e){
  //     showSnackBar(context, e.toString());
  //   }
  // }
}
