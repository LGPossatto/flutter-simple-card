import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ClassCard()));
}

class ClassCard extends StatefulWidget {
  const ClassCard({super.key});

  @override
  State<ClassCard> createState() => _ClassCardState();
}

class _ClassCardState extends State<ClassCard> {
  int totalExp = 7690419;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Class ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            totalExp += 1;
          });
        },
        backgroundColor: Colors.grey[900],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/shadow_kermit.jpg"),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[900],
              ),
              Text(
                "NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kermit",
                style: TextStyle(
                    color: Colors.greenAccent[400],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "TITLE",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Dark Lord",
                style: TextStyle(
                    color: Colors.greenAccent[400],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "MASTER LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "99",
                style: TextStyle(
                    color: Colors.greenAccent[400],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "TOTAL EXP",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$totalExp',
                style: TextStyle(
                    color: Colors.greenAccent[400],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "dark.K3RM17@email.com",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
