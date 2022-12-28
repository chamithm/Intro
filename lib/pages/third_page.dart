import 'package:chamithtech/pages/fourth_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';
import 'package:avatar_glow/avatar_glow.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
              padding: const EdgeInsets.only(right:10.0,bottom: 8.0),
              child: Container(
                height: 150.0,
                child: Container(
                  child: Image(width: 200.0,height: 130.0,image: new AssetImage("assets/okay.png"))),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourthPage()),
                  );
                },
                child: Image(width: 150.0,image: new AssetImage("assets/downarrow.gif"))
              )
            ),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourthPage()),
                  );
                },
                child: Image(width: 280.0,image: new AssetImage("assets/orderNow.gif"))
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:2,
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