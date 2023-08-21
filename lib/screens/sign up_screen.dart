import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/screens/root_screen.dart';

import 'home_page.dart';



class   Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _LoginState();

}

class _LoginState extends State<Register> {
  bool isVisible=true;

  TextEditingController emailTextEditingController =TextEditingController();
  TextEditingController passwordTextEditingController =TextEditingController();
  var formKey = GlobalKey<FormState>();



  final     auth =FirebaseAuth.instance;
late String email;
late String password;







  








  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:  Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key:formKey,
            child: SingleChildScrollView(
              child: Column(

                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [Text("Register",
                    style:TextStyle
                      (


                        fontSize: 40,
                        color: Colors.blueGrey
                    ) ,

                  ),
                    SizedBox(height:60 ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value){email=value;},

                      controller:emailTextEditingController,
                      validator: (value){
                        if(value! .isEmpty){
                          return ("Email can not be empty");}   { return null;}
                      
                      }
/*else if (value!.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\ .)+[\w]{2,4}) ).hasMatch(value!)){
                          return("Enter correct email");
}*/
                      
                    



                    , decoration:InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),




                      ) ,
                    ),
                    SizedBox(height:60),

                    TextFormField(
onChanged: (value){password =value;},

                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordTextEditingController,

                      obscureText: isVisible,
                      validator: (value){
                        if(value! .isEmpty){
                          return ("password can not be empty");

                        }else if (value.length < 5 ){
                          return("password cannot be less than four");
}

                        return null;



                      },



                      decoration:InputDecoration(
                          labelText: "password",
                          border: OutlineInputBorder(),
                          prefixIcon:Icon(Icons.lock) ,
                          suffixIcon:IconButton(
                            onPressed:(){
                              setState((){isVisible=!isVisible;});
                            }
                            ,
                            icon:Icon(isVisible? Icons.visibility_off
                                :Icons.remove_red_eye) ,

                          )



                      ) ,

                    ),
                    SizedBox(height:60)

                    , Container(
                        width:double.infinity ,
                        color:Colors.blueGrey

                        ,child: MaterialButton(onPressed:  () async {
                      try {
                        var user = await auth.createUserWithEmailAndPassword(
                            email: email, password: password);
                        Navigator.push(context,MaterialPageRoute( builder: (context) => RootScreen( ) ,
                        ) );



                      }
                      catch (e) {print(e);}
                    }



                        ,

                        child:   Text("Register",
                            style:TextStyle(

                                fontSize:30,
                                color: Colors.black45
                            )




                        ))


                    ),
                    SizedBox(height:60),

               /*     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Do not have an account?"),
                        TextButton(onPressed: (){}, child: Text("Register now"))


                      ],







                    )*/

                  ]

















              ),
            ),
          ),
        )
















    );











  }
}
