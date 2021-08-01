import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Des extends StatefulWidget {
  var clas;
  Des({this.clas});
  @override
  _DesState createState() => _DesState();
}

class _DesState extends State<Des> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.clas.name),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                widget.clas.poster,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 330,
              ),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage("Image/Home/HomeBackground.jpeg"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.white,
                      size: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Team Size : ${widget.clas.TeamSize}",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.symmetric(vertical: 10),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                widget.clas.eventtype,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.symmetric(vertical: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    widget.clas.register == null
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              widget.clas.register,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: TextStyle(color: Colors.red, fontSize: 25),
                            ),
                          ),
                    SizedBox(height: 30),
                    ListTile(
                      title: Text(
                        "Description:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          widget.clas.discription,
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      title: Text(
                        "Event Organizer:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          widget.clas.organizer,
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: InkWell(
                        onTap: () {
                          if (widget.clas.m == 0) {
                            if (widget.clas.TeamSize == "1") {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.black,
                                      title: Text(
                                        "This Event is solo.",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    );
                                  });
                            } else {
                              widget.clas.m = 1;
                              return showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.black,
                                      title: Text(
                                        "Add Member",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        padding: EdgeInsets.only(right: 20),
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.0, right: 10),
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
                                                  setState(() {});
                                                },
                                                decoration: InputDecoration(
                                                  labelText: "Enter Name",
                                                  hintText: "Enter Name.",
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Confirm'),
                                        ),
                                      ],
                                    );
                                  });
                            }
                          } else {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.black,
                                    title: Text(
                                      "Member Alredy enter.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                });
                          }
                        },
                        child: Container(
                          // width: 10,
                          alignment: Alignment.center,
                          child: Text(
                            "Add Member",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: InkWell(
                        onTap: () {
                          if (widget.clas.s == 0) {
                            widget.clas.s = 1;
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.black,
                                    title: Text(
                                      "Thank you for Registration.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                });
                          } else {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.black,
                                    title: Text(
                                      "You have done registration already.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                });
                          }
                        },
                        child: Container(
                          // width: 10,
                          alignment: Alignment.center,
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
