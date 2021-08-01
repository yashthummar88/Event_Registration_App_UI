import 'package:flutter/material.dart';
import 'package:updates_2020/screens/temp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  IconData _iconData = Icons.visibility_off;
  bool _permission = true;
  String uname, pass;
  int count, index, temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.9), BlendMode.dstATop),
            image: AssetImage('Image/Login/LogInBackground.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UPDATES 2k21',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'yash',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ContainerForm(
                  "Enter Email here.", "Enter Email", Icons.email, uname),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(right: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10),
                    ),
                    Expanded(
                      child: TextFormField(
                        validator: (val) {
                          if (val.length < 4) {
                            return "Enter at least 4 character of Password.";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            pass = val;
                          });
                        },
                        obscureText: _permission,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password.",
                          border: InputBorder.none,
                          icon: Icon(Icons.lock),
                          suffix: InkWell(
                            onTap: () {
                              setState(() {
                                if (_permission == true) {
                                  _permission = false;
                                  _iconData = Icons.visibility;
                                } else {
                                  _permission = true;
                                  _iconData = Icons.visibility_off;
                                }
                              });
                            },
                            child: Icon(_iconData),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have not account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/sign');
                      },
                      child: Container(
                        child: Text(
                          "SignUp",
                          style: TextStyle(color: Colors.red, fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 20, top: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      count = 0;
                      index = 0;
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Temp.l.forEach((element) {
                          index++;
                          if (uname == element.gmail &&
                              pass == element.password) {
                            print("hello");
                            temp = index - 1;
                            count++;
                          }
                        });
                        if (count > 0) {
                          Navigator.of(context).pushNamed(
                            "/home",
                            arguments: temp,
                          );
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Invalid Input"),
                                );
                              });
                        }
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 70),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContainerForm(String hint, String name, IconData icon, var set) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
          ),
          Expanded(
            child: TextFormField(
              textInputAction: TextInputAction.next,
              validator: (val) {
                if (val.contains('@')) {
                  return null;
                }
                return "Enter Correct email.";
              },
              onSaved: (val) {
                setState(() {
                  uname = val;
                });
              },
              decoration: InputDecoration(
                labelText: name,
                hintText: hint,
                border: InputBorder.none,
                icon: Icon(icon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
