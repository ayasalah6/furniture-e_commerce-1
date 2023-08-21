import 'package:flutter/material.dart';

import '../login_screen.dart';
import 'onboarding_screen1.dart';
import 'onboarding_screen2.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  int currentIndex=2;


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
                  image: AssetImage("assets/images/different.jpg"),
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(" All that is new and trendy",
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
                "_ We have the most trendy furniture and different .",
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
                        builder: (context) =>Login(),
                      ));
                },
                child: Text("Next  -->",
                    style: TextStyle(color: Colors.black45, fontSize: 20)),
              )),
          SizedBox(
            width: 15,
          ),
          Row(
              mainAxisAlignment:MainAxisAlignment.center


              ,children: [     TextButton(onPressed: (



              ){

            Navigator.push(context,MaterialPageRoute( builder: (context) => Onboarding2() ,
            ) );
          }, child: Text("<--",style:TextStyle(color:Colors.blueGrey,fontSize:20)))



            ,
            Padding(
              padding: const EdgeInsets.all(12),
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
