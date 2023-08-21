import 'package:flutter/material.dart';
import 'package:untitled8/screens/theEnd2.dart';
import 'package:untitled8/widgets/subtitle_text.dart';
import 'package:untitled8/widgets/title_text.dart';

class End1 extends StatelessWidget {
  const End1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.blue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SubtitleTextWidget(
                  label: "(about my app)",
                  color: Colors.deepPurple,
                  fontSize: 30,
                ),
                SizedBox(
                  height: 40,
                ),
                TitlesTextWidget(
                  label:
                      "//We arrive to the End of my  beautiful\n app that includes all very beautiful\n and different Furniture, I hope the you\n enjoy when buy and use my app. ",
                  color: Colors.deepPurpleAccent,
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                    width: 110,
                    height: 45,
                    child: MaterialButton(
                      color: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => End2(),
                            ));
                      },
                      child: Text("Next  -->",
                          style:
                              TextStyle(color: Colors.black45, fontSize: 20)),
                    )),
              ],
            ),
          ),
        ));
  }
}
