import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:untitled8/screens/sign%20up_screen.dart';
import 'package:untitled8/screens/root_screen.dart';
import 'home_page.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  final     auth =FirebaseAuth.instance;
  late String email;
  late String password;








  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
                key: formKey,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        "login",
                        style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                      ),
                      SizedBox(height: 60),
                      TextFormField(
                        onChanged: (value){email=value;},
                        keyboardType: TextInputType.emailAddress,
                        controller: emailTextEditingController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Email can not be empty");
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 60),
                      TextFormField(
onChanged: (value){password=value;},
                        controller: passwordTextEditingController,
                        obscureText: isVisible,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("password can not be empty");
                          }else if (value.length < 5 ){
                          return ("password cannot be less than four");
                        }
                        return null;},
                        decoration: InputDecoration(
                            labelText: "password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility_off
                                  : Icons.remove_red_eye),
                            )),
                      ),
                      SizedBox(height: 40),
                      Container(
                          width: double.infinity,
                          color: Colors.blueGrey,
                          child: MaterialButton(onPressed: () async {
    if (formKey.currentState!.validate()) {
    print(emailTextEditingController.text);
    print(passwordTextEditingController.text);}
    try{

    var user= await FirebaseAuth.instance
        .signInWithEmailAndPassword(
    email: email,
    password:
    password);





    if (user != null){ Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => RootScreen(),
    ));}

    }catch(e){print(e);}

    }

                            , child:  Text("login",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black45))
                            )),
                              SizedBox(height: 60)

                           ,   Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Do not have an email?"),
                               /*   TextButton(
                                      onPressed: () {
                                        Navigator.push(1
                                            context,
                                            MaterialPageRoute(
                                              builder: (                                                                                                                                                               context) =>
                                                  (Register()),
                                            ));
                                      },
                                      child: Text("Sign up now"))*/
  TextButton(onPressed: (){ Navigator.push(context,MaterialPageRoute( builder: (context) => Register() ,
  ) );}, child:   Text("Sign up now"))



                                ],
                              )
                            
                          
                    ])))));
  }
}
