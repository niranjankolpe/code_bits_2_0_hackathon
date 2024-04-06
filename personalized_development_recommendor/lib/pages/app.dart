import 'package:flutter/material.dart';


class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
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
              padding: EdgeInsets.symmetric(horizontal: 50),
                children: [
              SizedBox(
                height: 50,
              ),


              const SizedBox(
                height: 50,
              ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "weakness");
                    },
                    child: Text(
                      "  Weakness  ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.background),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).colorScheme.secondary),
                    ),
                  ),
              SizedBox(height: 20,),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "resources");
                },
                child: Text(
                  "  Resources  ",
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
