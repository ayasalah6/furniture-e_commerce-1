import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled8/widgets/subtitle_text.dart';

class QuantityBottomSheetWidget extends StatelessWidget {
  const QuantityBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        children: [
          SizedBox(height: 20,),
          Container(
            height: 6,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey),

  
          ), SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
            //  shrinkWrap: true,
            //  physics:  NeverScrollableScrollPhysics(),
              itemCount: 30,
              itemBuilder: (context, index) => InkWell(
                onTap:
                (){log("index $index"    as num );},
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Center(child: SubtitleTextWidget(label:
                  (  "${index+1}"))),
                ),
              ),),
          ),
        ],
      ),
    );
  }
}
