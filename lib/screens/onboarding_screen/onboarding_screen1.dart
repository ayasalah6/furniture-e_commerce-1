import 'package:flutter/material.dart';

import '../login_screen.dart';
import 'onboarding_screen2.dart';
import 'onboarding_screen3.dart';
class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _State();
}

class _State extends State<Onboarding1> {

int index=0;
List<Widget> screens=[
  Onboarding1(),
  Onboarding2(),
  Onboarding3(),




];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color:Colors.black12





          ,  child: Column(

      children: [
        Padding(
            padding: const EdgeInsets.all(35),
        child:Text("Welcome to my app...🥰",style:TextStyle(color:Colors.blueGrey,fontSize:20))

        )





        ,    Padding(
              padding: const EdgeInsets.only(bottom: 15 ),
              child: Container(

                  width: 350,
                  height: 350,
                  clipBehavior: Clip.antiAliasWithSaveLayer
               ,   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(  25,
                  ),),
                  child: Image(
                    image: AssetImage("assets/images/bedroom2.png"),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Bedroom Furniture  ",
               style:TextStyle(fontSize: 23,
color:Colors.deepPurple,


                  ))

            ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text("_ We  help  you  to  choose  your  bedroom  in  the  most  modern  style  at  the  cheapest  price ."
                  , style:  TextStyle (fontSize: 20,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),
                  ),
            ),
          ),
SizedBox(height:25)












,
Container(width:110,height:45,
  child:   MaterialButton( color: Colors.blueGrey
    ,onPressed: (){



        Navigator.push(context,MaterialPageRoute( builder: (context) => Onboarding2() ,
        ) );

      },child: Text("Next  -->",style:TextStyle(color: Colors.black45,fontSize:20)),





















    )




  ),
  SizedBox(width: 15,)



,Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:


  [

























Padding(
    padding: const EdgeInsets.only(top: 9,right: 15,left :90 ),
    child: Row(
        mainAxisAlignment:MainAxisAlignment.end,












        children:[
          IconButton(onPressed: (){     Navigator.push(context,MaterialPageRoute( builder: (context) =>Onboarding1(),
        ) );}, icon :Icon (Icons.circle_rounded, color: screens[index]==Onboarding1()?  Colors.red :Colors.blue,size:10,

          )),IconButton(onPressed: (){     Navigator.push(context,MaterialPageRoute( builder: (context) =>
          Onboarding2()));}, icon:Icon (Icons.circle_rounded,color:Colors.blue,size:10,

          ))

               , IconButton(onPressed: (){     Navigator.push(context,MaterialPageRoute( builder: (context) => Onboarding3()










            ));}, icon:Icon (Icons.circle_rounded,color:Colors.blue,size:10,

                ))]),
  ),
           TextButton(onPressed: (){

              Navigator.push(context,MaterialPageRoute( builder: (context) => Login() ,
              ) );
            }, child: Text("Skip",style:TextStyle(color:Colors.blueGrey,fontSize:20)))
         ]   )




























            ,









          ])









    ),
        ),
    );
  }
}
