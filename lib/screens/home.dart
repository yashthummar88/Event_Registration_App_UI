import 'dart:io';

import 'package:flutter/material.dart';
import 'package:updates_2020/screens/description.dart';
import 'package:updates_2020/screens/login.dart';
import 'package:updates_2020/screens/temp.dart';

import 'data.dart';

class Home extends StatefulWidget {
  String name;
  String email;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.black,
            title: Text(
              'Are you sure?',
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              'Do you want to exit an App',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              ElevatedButton(
                onPressed: () => exit(0),
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    int m = ModalRoute.of(context).settings.arguments;
    widget.name = Temp.l[m].name;
    widget.email = Temp.l[m].gmail;
    print(widget.email);
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        drawer: DrawerContainer(),
        appBar: AppBar(
          title: Center(
            child: Image.asset(
              // "Image/Home/AppBar.png",
              "Image/LightLogo2.png",
              scale: 4.9,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          toolbarHeight: 110,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              icon: Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("Image/Home/HomeBackground.jpeg"),
            fit: BoxFit.cover,
          )),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Des(clas: new CodingCrossword())),
                    );
                  },
                  child: Image.asset("Image/Home/CodingCrossword_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new LogoCodify())),
                    );
                  },
                  child: Image.asset("Image/Home/LogoCodify_Home1.jpeg"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new DecodersHunt())),
                    );
                  },
                  child: Image.asset("Image/Home/DecodersHunt_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new Rangolify())),
                    );
                  },
                  child: Image.asset("Image/Home/Rangolify_Home1.jpeg"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new Codemania())),
                    );
                  },
                  child: Image.asset("Image/Home/Codemania_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new GameChefer())),
                    );
                  },
                  child: Image.asset("Image/Home/GameChefer_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new Abhivyakti())),
                    );
                  },
                  child: Image.asset("Image/Home/Abhivyakti_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new CodeTheHints())),
                    );
                  },
                  child: Image.asset("Image/Home/CodeTheHints_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new Innotech())),
                    );
                  },
                  child: Image.asset("Image/Home/Innotech_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new Scavenger())),
                    );
                  },
                  child: Image.asset("Image/Home/Scavenger_Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new Valorant())),
                    );
                  },
                  child: Image.asset("Image/Home/Valorant _Home1.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Des(clas: new TheWatchCraft())),
                    );
                  },
                  child: Image.asset("Image/Home/TheWatchCraft.png"),
                ),
                Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DrawerContainer() {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 70,
                width: 80,
                child: Image.asset(
                  "Image/LightLogo2.png",
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    widget.email,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "EDIT PROFILE",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_box_outlined,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "ABOUT US",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
