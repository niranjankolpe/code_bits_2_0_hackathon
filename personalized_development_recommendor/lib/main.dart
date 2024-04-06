import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:personalized_development_recommendor/pages/app.dart';
import 'package:personalized_development_recommendor/pages/emailotp.dart';
import 'package:personalized_development_recommendor/pages/home.dart';
import 'package:personalized_development_recommendor/pages/resources.dart';
import 'package:personalized_development_recommendor/pages/signinup.dart';
import 'package:personalized_development_recommendor/pages/weakness.dart';
import 'package:personalized_development_recommendor/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers:[
            ChangeNotifierProvider(create: (context)=>ThemeProvider())
          ],
          child: FlutterSizer(
            builder: (context, orientation, screenType) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: Provider.of<ThemeProvider>(context).themeData,
                initialRoute: "signup",
                routes: {
                  "signin":(context) => signin(),
                  "signup":(context) => signup(),
                  "emailotp":(context) => emailotp(),
                  'home':(context) => home(),
                  'goal' : (context) => goal(),
                  'weakness': (context) => weakness(),
                  'app':(context) => app(),
                  'resources':(context) => resources(),
                  // "academicperformance": (context) => academicPerformance(),
                  },);}),)
  );
}
