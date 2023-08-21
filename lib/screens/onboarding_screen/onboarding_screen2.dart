import 'package:flutter/material.dart';

import '../login_screen.dart';
import 'onboarding_screen1.dart';
import 'onboarding_screen3.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {



  int currentIndex =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 15),
              child: Container(
                  width: 450,
                  height: 450,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  child: Image(
                    image: AssetImage("assets/images/dining room.png"),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text("Dinning Room Furniture  ",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.deepPurple,
                    ))),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Text(
                  "_ We  also  have  the  most  beautiful  dinning  furniture  and all furniture of your house  .",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurpleAccent,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
                width: 110,
                height: 45,
                child: MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Onboarding3(),
                        ));
                  },
                  child: Text("Next  -->",
                      style: TextStyle(color: Colors.black45, fontSize: 20)),
                )),
            SizedBox(
              width: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center
                ,

                children: [     TextButton(onPressed: (



                ){

              Navigator.push(context,MaterialPageRoute( builder: (context) => Onboarding1() ,
              ) );
            }, child: Text("<--",style:TextStyle(color:Colors.blueGrey,fontSize:20)))



        ,
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(children: [
                  IconButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute( builder: (context) =>Onboarding1(),
    ) );},
                      icon: Icon(Icons.circle_rounded,
                          color: Colors.blue, size: 10)),
                  IconButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute( builder: (context) =>Onboarding2(),
    ) );},
                      icon: Icon(Icons.circle_rounded,
                          color: Colors.blue, size: 10)),
                  IconButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute( builder: (context) =>Onboarding3(),
    ) );},
                      icon: Icon(
                        Icons.circle_rounded,
                        color: Colors.blue,
                        size: 10,
                      ))
                ]),
              ),
              TextButton(
                  onPressed: () {

                    Navigator.push(context,MaterialPageRoute( builder: (context) => Login() ,
                    ) );
                  },
                  child: Text("Skip",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 20))), ]),
          ]),
        ),
      ),
    );
  }
}
