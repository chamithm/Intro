import 'package:chamithtech/pages/secound_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_button/animated_button.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool visibleThink = true;
  bool visibleCool = false;
  bool visibleText = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        visibleText = true;
        visibleThink = false;
      });
    });

    Timer(const Duration(seconds: 6), () {
      setState(() {
        visibleCool = true;
      });
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
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
                height: 370.0,
                child: Visibility(
                  visible: visibleText,
                  child: AnimatedTextKit(
                    repeatForever: false,
                    totalRepeatCount : 1,
                    animatedTexts: [
                      TyperAnimatedText("Don't think\n Too\n Much...!",textStyle: 
                        TextStyle(fontSize:50.0,color: Colors.red,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,speed: Duration(milliseconds:100)
                      ),
                    ],
              ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Visibility(
                    visible: visibleCool,
                    child: Image(width: 100.0,height: 110.0,image: new AssetImage("assets/minion3.gif"))
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Visibility(
                    visible: true,
                    child: Image(width: 100.0,height: 110.0,image: new AssetImage("assets/tenor.gif"))
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: AnimatedButton(
                width: 160.0,
                height: 40.0,
                color: Colors.green,
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
                    MaterialPageRoute(builder: (context) => SecoundPage()),
                  );
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top:12.0),
            //   child: SizedBox(
            //     width: 170.0,
            //     height: 35.0,
            //     child: Material(
            //       borderRadius: BorderRadius.circular(10.0),
            //       color: Colors.green,
            //       elevation: 0.0,
            //       child: MaterialButton(
            //         autofocus: true,
            //           onPressed: ()async{
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(builder: (context) => SecoundPage()),
            //             );
            //           },
            //           minWidth: MediaQuery.of(context).size.width,
            //           child: Text(
            //             "Continue",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20.0),
            //             ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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