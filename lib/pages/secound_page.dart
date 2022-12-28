import 'package:chamithtech/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_button/animated_button.dart';
import 'dart:async';

class SecoundPage extends StatefulWidget {
  @override
  _SecoundPageState createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  bool visiblePlace = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 2500), () {
      setState(() {
        visiblePlace = true;
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
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 24.0,bottom: 8.0),
              child: Container(
                alignment: Alignment.center,
                height: 340.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: false,
                    totalRepeatCount : 1,
                    animatedTexts: [
                      FadeAnimatedText('You',textAlign: TextAlign.center,duration: Duration(milliseconds:1000)),
                      //FadeAnimatedText('You\nAre in',textAlign: TextAlign.center,duration: Duration(milliseconds:1000)),
                      FadeAnimatedText('You\nAre in\nRight place...!',textAlign: TextAlign.center,duration: Duration(milliseconds:4000)),
                      // FadeAnimatedText("You are\n In\n Right place...!",textStyle: 
                      //   TextStyle(fontSize:50.0,color: Colors.green[800]),textAlign: TextAlign.center,duration: Duration(milliseconds:160),
                      // ),
                    ],
              ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Container(
                height: 140.0,
                child: Visibility(
                  visible: visiblePlace,
                  child: Container(
                    child: Image(width: 130.0,height: 160.0,image: new AssetImage("assets/minion2.gif")))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: AnimatedButton(
                width: 160.0,
                height: 40.0,
                color: Colors.purple,
                child: Text(
                  'Continue',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:1,
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
            title: Text("Order"),
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