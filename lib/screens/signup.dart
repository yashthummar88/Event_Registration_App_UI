import 'package:flutter/material.dart';
import 'package:updates_2020/screens/temp.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKeySign = GlobalKey<FormState>();
  String mail, pass, name, branch, phone;
  IconData _iconData = Icons.visibility_off;
  bool _permission = true;
  int count, index;
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
          key: _formKeySign,
          child: SingleChildScrollView(
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
                  height: 50,
                ),
                Container(
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
                            if (val.length < 4) {
                              return "Enter Correct name.";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "Enter Name",
                            hintText: "Enter Your Full Name",
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                            if (val.length != 10) {
                              return "Enter Correct name.";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              phone = val;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "Enter Phone No",
                            hintText: "Enter your mobile number without +91",
                            border: InputBorder.none,
                            icon: Icon(Icons.call),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                            return "Enter valid Email-id.";
                          },
                          onSaved: (val) {
                            setState(() {
                              mail = val;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "Enter Email Id",
                            hintText: "Enter your Valid Email id",
                            border: InputBorder.none,
                            icon: Icon(Icons.email),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                            labelText: "Enter Password",
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
                  height: 20,
                ),
                Container(
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
                            if (val.length < 4) {
                              return "Enter Correct name.";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              branch = val;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "Enter Your Branch",
                            hintText: "Enter your Branch",
                            border: InputBorder.none,
                            icon: Icon(Icons.alt_route_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: Container(
                          child: Text(
                            "LogIn",
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
                        print("hello");
                        count = 0;
                        if (_formKeySign.currentState.validate()) {
                          _formKeySign.currentState.save();
                          index = 0;
                          Temp.l.forEach(
                            (element) {
                              index++;
                              if (mail == element.gmail &&
                                  pass == element.password) {
                                count++;
                              }
                            },
                          );
                          if (count == 0) {
                            Temp.l.add(Temp(
                                gmail: mail,
                                password: pass,
                                mo_no: phone,
                                name: name,
                                branch: branch));
                            Navigator.of(context)
                                .pushNamed("/", arguments: index);
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("User alredy exist"),
                                );
                              },
                            );
                          }
                        }
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 70),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "SIGN UP",
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
      ),
    );
  }
}
