import 'package:flutter/material.dart';
import 'package:untitled8/widgets/subtitle_text.dart';
import 'package:untitled8/widgets/title_text.dart';

class End2 extends StatelessWidget {
  const End2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:

Center(
  child:   Container(
  
            width: double.infinity,height:500,decoration: BoxDecoration(borderRadius:BorderRadius.circular(30) ,color: Colors.blue),
  
    child:   Center(
  
    
  
      child:   Column(
  
    
  
      
  
    
  
        mainAxisAlignment: MainAxisAlignment.center,
  
    
  
      
  
    
  
                children: [
  
    
  
      
  
    
  
      
  
    
  
      
  
    
  
      
  
    
  
      
  
    
  
                  SubtitleTextWidget(label: "(about me)",color: Colors.deepPurple,fontSize: 50,),
  
    
  
      
  
    
  
      
  
    
  
      
  
    
  
       SizedBox(height: 70,),
  
    
  
      
  
    
  
                  SingleChildScrollView(
  
                    child: TitlesTextWidget(
  
                    
  
                      
  
                    
  
                        label:
  
                    
  
                      
  
                    
  
                            " //Developed by -->\n Eng:Aya Salah Ahmed Eltantawy\n,I studied in Faculty of \nComputer and Information science _\n Mansoura University. ",color: Colors.deepPurpleAccent,),
  
                  ),
  
    
  
      
  
    
  
       SizedBox(height: 50,),
  
    
  
      
  
    
  
        SubtitleTextWidget(label: "See you soon...🥰",fontSize:30,color: Colors.deepPurple,),
  
    
  
      
  
    
  
                ]
  
    
  
      
  
    
  
      
  
    
  
      
  
    
  
          ),
  
    
  
    ),
  
  ),
));}}