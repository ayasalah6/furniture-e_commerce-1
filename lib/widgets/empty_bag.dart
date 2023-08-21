import 'package:flutter/material.dart';
import 'package:untitled8/widgets/subtitle_text.dart';
import 'package:untitled8/widgets/title_text.dart';

import '../services/assets_manager.dart';

class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({super.key, required this.imagePath, required this.title, required this.subtitle, required this.buttonText});
final String imagePath,title,subtitle,buttonText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              width: 350,
              height: 350,
              child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image.asset(imagePath,
                      height: size.height * 0.35, width: double.infinity))),
          TitlesTextWidget(label: "whoops!", fontSize:30 , color: Colors.red),
          SizedBox(
            height: 20,
          ),
          SubtitleTextWidget(
            label: title,
            fontWeight: FontWeight.w600,
            fontSize: 23,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SubtitleTextWidget(
              label:
           subtitle,
              fontWeight: FontWeight.w200,
              fontSize: 20,
            ),
          ),  SizedBox(
            height: 25,
          ),
          ElevatedButton(style:ElevatedButton.styleFrom(padding: EdgeInsets.all(18),backgroundColor: Colors.blueGrey,elevation:0),
            onPressed:(){}, child: Text(buttonText,style:TextStyle(fontSize:22)),)

        ]),
      ),
    );



















  }
}
