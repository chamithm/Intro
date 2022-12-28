import 'dart:io';

import 'package:chamithtech/pages/fourth_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/services.dart';

class FifthPage extends StatefulWidget {
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  bool visibleText = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 1700), () {
      setState(() {
        visibleText = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.blue,
        title: Text('Fivver',style: TextStyle(fontSize: 20.0),),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
           IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bc3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child: Container(
                height: 150.0,
                child: Container(
                  child: Image(width: 200.0,height: 130.0,image: new AssetImage("assets/logo2.png"))),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 60.0,
              child: Column(
                children: [
                  AnimatedTextKit(
                    repeatForever: false,
                    totalRepeatCount : 1,
                    animatedTexts: [
                      TyperAnimatedText("Mobile App Developer",textStyle: 
                        TextStyle(fontSize:20.0,color: Colors.blue[700],fontWeight: FontWeight.bold,),textAlign: TextAlign.center,speed: Duration(milliseconds:80)
                      ),
                    ],
                  ),
                  Visibility(
                    visible: visibleText,
                    child: AnimatedTextKit(
                      repeatForever: false,
                      totalRepeatCount : 1,
                      animatedTexts: [
                        TyperAnimatedText("ChamithTech.",textStyle: 
                          TextStyle(fontSize:20.0,color: Colors.black54,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,speed: Duration(milliseconds:80)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:120.0,right: 12.0),
              child: InkWell(
                onTap: (){
                  SystemNavigator.pop();
                },
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: 150.0,
                  child: Container(
                    child: Image(width: 50.0,height: 130.0,image: new AssetImage("assets/exit8.png"))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:3,
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[100],
        fixedColor: Colors.red[300],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              title: Text("Place"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money_off_csred_sharp),
              title: Text("Oreder"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check),
              title: Text("Complete"),
            )
          ],
      ),
    );
  }
}