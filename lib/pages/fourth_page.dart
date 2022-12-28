import 'package:chamithtech/pages/fifth_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_button/animated_button.dart';
import 'dart:async';
import 'package:avatar_glow/avatar_glow.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  bool selectedRocket = false;
  bool visibleFastText = false;
  bool visibleRocket = false;
  bool visibleOk = false;
  bool selectedOK = false;
  bool visibleSatisfacton = false;
  bool visibleSatisBuild = false;
  bool visibleExit = false;
  bool visibleBye = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        visibleFastText = true;
        visibleRocket = true;
        //visibleOk = true;
      });
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        selectedRocket = true;
        //visibleOk = true;
      });
    });
    Timer(const Duration(seconds: 4), () {
      setState(() {
        visibleRocket = false;
        visibleOk = true;
        visibleSatisfacton = true;
      });
    });
    Timer(const Duration(seconds: 5), () {
      setState(() {
        visibleOk = true;
        selectedOK = true;
      });
    });
    Timer(const Duration(seconds: 7), () {
      setState(() {
        visibleSatisBuild = true;
      });
    });
    Timer(const Duration(seconds: 8), () {
      setState(() {
        
        //visibleBye = true;
        
      });
    });
    Timer(const Duration(seconds: 10), () {
      setState(() {
        visibleOk = false;
        visibleBye = true;
        visibleExit = true;
        visibleFastText = false;
        visibleSatisfacton = false;
        visibleSatisBuild = false;
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
              padding: const EdgeInsets.only(bottom:10.0),
              child: Visibility(
                visible:visibleRocket,
                child: SizedBox(
                  width: 600,
                  height: 250,
                  child: Stack(
                    children: <Widget>[
                      AnimatedPositioned(
                        width: selectedRocket ? 1000.0 : 150.0,
                        height: selectedRocket ? 10.0 : 150.0,
                        top: selectedRocket ? 0.0 : 40.0,
                        duration: const Duration(seconds: 1),
                        //curve: Curves.fastOutSlowIn,
                        child: Container(
                          //color: Colors.blue,
                          child: Center(child: Image(width: 140.0,image: new AssetImage("assets/rocket2.gif"))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: Visibility(
                visible:visibleOk,
                child: SizedBox(
                  width: 600,
                  height: 250,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      AnimatedPositioned(
                        width: selectedOK ? 200 : 10,
                        height: selectedOK ? 300 : 10,
                        top: selectedOK ? 5.0 : 10.0,
                        duration: const Duration(seconds: 2),
                        //curve: Curves.fastOutSlowIn,
                        child: Container(
                          //color: Colors.blue,
                          child: Center(child: Image(width: 140.0,image: new AssetImage("assets/ok2.png"))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:1.0),
              child: Visibility(
                visible:visibleBye,
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  child: Container(
                    child: Image(width: 200.0,height: 130.0,image: new AssetImage("assets/go.gif"))),
                ),
              ),
            ),
            Visibility(
              visible: visibleFastText,
              child: AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount : 1,
                animatedTexts: [
                  TyperAnimatedText("Fast Delivary...!",textStyle: 
                    TextStyle(fontSize:25.0,color: Colors.red[400],fontWeight: FontWeight.bold,),textAlign: TextAlign.center,speed: Duration(milliseconds:100)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Visibility(
                visible: visibleSatisfacton,
                child: AnimatedTextKit(
                  repeatForever: false,
                  totalRepeatCount : 1,
                  animatedTexts: [
                    TyperAnimatedText("100% Satisfaction...!",textStyle: 
                      TextStyle(fontSize:25.0,color: Colors.red[500],fontWeight: FontWeight.bold,),textAlign: TextAlign.center,speed: Duration(milliseconds:100)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Visibility(
                visible: visibleSatisBuild,
                child: AnimatedTextKit(
                  repeatForever: false,
                  totalRepeatCount : 1,
                  animatedTexts: [
                    TyperAnimatedText("Your product as Your wish...!",textStyle: 
                      TextStyle(fontSize:25.0,color: Colors.red[600],fontWeight: FontWeight.bold,),textAlign: TextAlign.center,speed: Duration(milliseconds:80)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30,bottom:10.0),
              child: Visibility(
                visible: visibleExit,
                  child: AnimatedButton(
                    width: 150.0,
                    height: 40.0,
                    color: Colors.green,
                    child: Text(
                      'Go...!',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FifthPage()),
                  );
                },
              ),
                // child: SizedBox(
                //   width: 170.0,
                //   height: 35.0,
                //   child: Material(
                //     borderRadius: BorderRadius.circular(10.0),
                //     color: Colors.green,
                //     elevation: 0.0,
                //     child: MaterialButton(
                //         onPressed: ()async{
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => FifthPage()),
                //           );
                //         },
                //         minWidth: MediaQuery.of(context).size.width,
                //         child: Text(
                //           "Go...!",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20.0),
                //         ),
                //     ),
                //   ),
                // ),
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