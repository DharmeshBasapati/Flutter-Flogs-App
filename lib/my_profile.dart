import 'dart:ui';

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  double _sigmaX = 2; // from 0-10
  double _sigmaY = 2; // from 0-10
  double _opacity = 0.1; // from 0-1.0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://miro.medium.com/fit/c/256/256/1*WKZSnpp8B5__zWcsOTaJ0A.jpeg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter:
                          ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                      child: Container(
                        color: Colors.black.withOpacity(_opacity),
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                          'https://miro.medium.com/fit/c/256/256/1*WKZSnpp8B5__zWcsOTaJ0A.jpeg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black12,
                      ),
                      Positioned(
                          bottom: 5,
                          right: 5,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.green,
                            child: Container(
                              child: Icon(
                                Icons.edit,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
              Container(
                color: Theme.of(context).backgroundColor,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 25, right: 25, bottom: 25),
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.black87,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'FULL NAME',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                              onChanged: (query) {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.black87,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'EMAIL',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                              onChanged: (query) {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.wifi_tethering,
                                  color: Colors.black87,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'AUTHOR NAME',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                              onChanged: (query) {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black87,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'PASSWORD',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                              onChanged: (query) {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                    Colors.lightGreen,
                                    Colors.green
                                  ])),
                              child: Text(
                                'SAVE CHANGES',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
