import 'package:flutter/material.dart';


class weakness extends StatefulWidget {
  const weakness({super.key});

  @override
  State<weakness> createState() => _weaknessState();
}

class _weaknessState extends State<weakness> {
  List lst = ["python", "c"];

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
                "Weakness",
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
              ListTile(
                title: Text("Communication"),
              ),
              ListTile(
                title: Text("Java"),
              ),ListTile(
                title: Text("C++"),
              ),


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
