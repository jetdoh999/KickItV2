import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/app.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/KickItApp': (BuildContext context) => new KickItApp()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/KickItApp');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage("assets/atro/B4.jpg"),
                        fit: BoxFit.cover
                    )
                )
            ),

            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 30.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(height: 80),

                    Container(
                        child: Text("Welcome to",
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.white
                                ,fontFamily: 'Montserrat'
                            )
                        )
                    ),
                    SizedBox(height: 30),

                    Container(
                        child: Text("Soccer community",
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white
                                ,fontFamily: 'Montserrat'
                            )
                        )
                    ),
                    SizedBox(height: 80),
                    Container(
                        height: 140,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("assets/atro/logo.png"),
                                fit: BoxFit.cover
                            )
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}