import 'package:flutter/material.dart';
import 'package:personalized_development_recommendor/provider/authservice.dart';
import 'package:personalized_development_recommendor/utils/variables.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int pythondropdown = 0;
  int htmldropdown = 0;
  int javadropdown = 0;
  int cdropdown = 0;
  int mathsdropdown = 0;
  int dsadropdown = 0;
  int oopsdropdown = 0;
  int communicationdropdown = 0;
  int writtingdropdown = 0;
  int readingdropdown = 0;

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
        title: Text(
          "Bit Bandits",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SafeArea(
          child: Center(
        child:
            ListView(padding: EdgeInsets.symmetric(horizontal: 30), children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Academic Performance",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Programming",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Python",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                value: pythondropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    pythondropdown = newValue!;
                  });
                },
                items:
                    <int>[0, 1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 50,
                  child: Text(
                    "HTML & CSS",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: htmldropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    htmldropdown = newValue!;
                  });
                },
                items:
                    <int>[0, 1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Java",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                value: javadropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    javadropdown = newValue!;
                  });
                },
                items:
                    <int>[0, 1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 50,
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: cdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    cdropdown = newValue!;
                  });
                },
                items:
                    <int>[0, 1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Logic",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Maths",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                value: mathsdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    mathsdropdown = newValue!;
                  });
                },
                items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "DSA",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                value: dsadropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    dsadropdown = newValue!;
                  });
                },
                items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "OOPS",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton(
                value: oopsdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    oopsdropdown = newValue!;
                  });
                },
                items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Softskills",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 150,
                  child: Text(
                    "Communication",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: communicationdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    communicationdropdown = newValue!;
                  });
                },
                items: <int>[0, 1, 2, 3, 4, 5]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 150,
                  child: Text(
                    "Writting",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: writtingdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    writtingdropdown = newValue!;
                  });
                },
                items: <int>[0, 1, 2, 3, 4, 5]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 150,
                  child: Text(
                    "Reading",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: readingdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    readingdropdown = newValue!;
                  });
                },
                items: <int>[0, 1, 2, 3, 4, 5]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              AuthService authService = AuthService();
              authService.academicPerformance(
                  context: context,
                  email: variables.email,
                  python: pythondropdown,
                  html: htmldropdown,
                  java: javadropdown,
                  c: cdropdown,
                  maths: mathsdropdown,
                  dsa: dsadropdown,
                  oops: oopsdropdown,
                  communication: communicationdropdown,
                  writting: writtingdropdown,
                  reading: readingdropdown);

              Navigator.pop(context);
              Navigator.pushNamed(context, 'goal');
            },
            child: Text(
              "  Submit  ",
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

class goal extends StatefulWidget {
  const goal({super.key});

  @override
  State<goal> createState() => _goalState();
}

class _goalState extends State<goal> {
  String fielddropdown = "web developer";
  int coursedurationdropdown = 0;
  int availabletimedropdown = 0;

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
            ListView(padding: EdgeInsets.symmetric(horizontal: 30), children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Goal",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 140,
                  child: Text(
                    "Field",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: fielddropdown,
                onChanged: (String? newValue) {
                  setState(() {
                    fielddropdown = newValue!;
                  });
                },
                items:
                    <String>["web developer", "software developer","data science", "Tester"].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 140,
                  child: Text(
                    "Course Duration (In weeks)",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: coursedurationdropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    coursedurationdropdown = newValue!;
                  });
                },
                items:
                    <int>[0, 1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 140,
                  child: Text(
                    "Available Time (in Hrs)",
                    style: TextStyle(fontSize: 18),
                  )),
              DropdownButton(
                value: availabletimedropdown,
                onChanged: (int? newValue) {
                  setState(() {
                    availabletimedropdown = newValue!;
                  });
                },
                items:
                    <int>[0, 1, 2, 3].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              AuthService authService = AuthService();
              authService.goal(
                  context: context,
                  email: variables.email,
                  domain: fielddropdown,
                  course: coursedurationdropdown,
                  availabletime: availabletimedropdown);
            },
            child: Text(
              "  Submit  ",
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
