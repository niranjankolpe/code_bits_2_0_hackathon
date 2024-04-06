import 'package:flutter/material.dart';


class resources extends StatefulWidget {
  const resources({super.key});

  @override
  State<resources> createState() => _resourcesState();
}

class _resourcesState extends State<resources> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Bit Bandits",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SafeArea(
          child: Center(
            child:
            ListView(
                padding: EdgeInsets.symmetric(horizontal: 30),
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Resources",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  // ListTile(
                  //   title: Text("Python"),
                  // ),
                  // ListTile(
                  //   title: Text("Machine Learning"),
                  // ),
                  Image.asset("lib/images/Gemini AI Prompt 2 Part 1.png"),
                  Image.asset("lib/images/Gemini AI Prompt 2 Part 2.png"),

                  SizedBox(height: 20,),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "app");
                    },
                    child: Text(
                      "  Home  ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.background),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                  const SizedBox(
                    height: 300,
                  ),
                ]),
          )),
    );
  }
}
