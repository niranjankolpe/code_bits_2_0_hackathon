import 'package:flutter/material.dart';
import '../provider/authservice.dart';
import 'package:personalized_development_recommendor/utils/variables.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool ObscureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final AuthService authService = AuthService();

  // void loginUser() {
  //   authService.signInUser(
  //       context: context,
  //       email: emailController.text,
  //       password: passwordController.text);
  // }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double containersize;
    if (screensize.width > 800) {
      containersize = (screensize.width) / 2;
    } else {
      containersize = 400;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Bit Bandits", style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
                child: Column(children: [
                  const SizedBox(
                    height: 100,
                  ),
                  // Image.asset(
                  //   "images/logo.png",
                  //   width: 350,
                  //   height: 150,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: containersize,
                      margin: const EdgeInsets.only(right: 30, left: 30),
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, right: 20, left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).colorScheme.primary),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Email ID",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        TextField(
                          controller: emailController,
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, right: 20),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter email",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Pasword",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        TextField(
                          controller: passwordController,
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          obscureText: ObscureText,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, right: 20),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter password",
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  if (ObscureText==true) ObscureText = false;
                                  else ObscureText = true;
                                });

                              },
                              icon: Icon(Icons.remove_red_eye_rounded,
                                  size: 16, color: Colors.black),
                            ),

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              // loginUser();
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.only(right: 20, left: 20)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).colorScheme.background),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ])),
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "Don't have account?",
                    style: TextStyle(fontSize: 18, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: Text(
                      "  Create Account  ",
                      style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.background),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                  const SizedBox(
                    height: 300,
                  ),
                ]),
              ))),
    );
  }
}




class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool ObscureText = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confpasswordController = TextEditingController();

  // final AuthService authService = AuthService();

  // void loginUser() {
  //   authService.signInUser(
  //       context: context,
  //       email: emailController.text,
  //       password: passwordController.text);
  // }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double containersize;
    if (screensize.width > 800) {
      containersize = (screensize.width) / 2;
    } else {
      containersize = 400;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Bit Bandits", style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  // Image.asset(
                  //   "images/logo.png",
                  //   width: 350,
                  //   height: 150,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: containersize,
                      margin: const EdgeInsets.only(right: 30, left: 30),
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, right: 20, left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).colorScheme.primary),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Name",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        TextField(
                          controller: nameController,
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, right: 20),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter name",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Email ID",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        TextField(
                          controller: emailController,
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, right: 20),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter email",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Pasword",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        TextField(
                          controller: passwordController,
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          obscureText: ObscureText,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, right: 20),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter password",
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  if (ObscureText==true) ObscureText = false;
                                  else ObscureText = true;
                                });

                              },
                              icon: Icon(Icons.remove_red_eye_rounded,
                                  size: 16, color: Colors.black),
                            ),

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Confirm Pasword",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                        TextField(
                          controller: confpasswordController,
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          obscureText: ObscureText,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, right: 20),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter password again",
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  if (ObscureText==true) ObscureText = false;
                                  else ObscureText = true;
                                });

                              },
                              icon: Icon(Icons.remove_red_eye_rounded,
                                  size: 16, color: Colors.black),
                            ),

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: (){
                              if (passwordController.text != '' && passwordController.text == confpasswordController.text){

                                AuthService authService = AuthService();

                                // authService.signup(
                                //     context: context,
                                //     email: emailController.text,
                                //     name: nameController.text,
                                //     pass: passwordController.text
                                // );
                                authService.emailavailable(context: context, email: emailController.text);
                                // int check = 0;
                                // rescode.then((value) => check= value);
                                // print(check);
                                // if ( rescode == 200){
                                //   Navigator.pushNamed(context, "emailotp");
                                // }
                                // else{
                                //   setState(() {
                                //     emailController.text = "";
                                //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                //       content: Text("Use another email to register"),
                                //     ));
                                //   });
                                // }
                              }
                              else{
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text("Make sure password and confirm password are same"),
                                ));
                              }
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.only(right: 20, left: 20)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).colorScheme.background),
                            ),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ])),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 18, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, 'signin');
                    },
                    child: Text(
                      "  Sign in  ",
                      style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.background),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ]),
              ))),
    );
  }
}