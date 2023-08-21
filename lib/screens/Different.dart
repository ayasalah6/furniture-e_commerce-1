import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/title_text.dart';



import 'package:flutter/material.dart';

import 'home_screen.dart';

class Different extends StatefulWidget {
  const Different({super.key});

  @override
  State< Different> createState() =>  _DifferentState();
}

class _DifferentState extends State< Different> {
  
  String? imagePath;

  String? text;

  String? price;
  List products = [];
  CollectionReference usersref =
      FirebaseFirestore.instance.collection("Different");

  Future getData() async {
    var responsebody = await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        products.add(element.data());
      });
    });
    print(products);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "HomePage",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black)),
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none, color: Colors.black)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.black,
                  ))
            ]),
        body:
      SingleChildScrollView(
          child: Column(
            children: [
               Row(mainAxisAlignment:MainAxisAlignment.center,
                 children: [


 TextButton(onPressed: (



                ){

              Navigator.push(context,MaterialPageRoute( builder: (context) => Home()));}, child:   Text("<--",style:TextStyle(color:Colors.blueGrey,fontSize:20))),
              
             

 

                   Container(
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: TitlesTextWidget(
                                    label: "Different",
                                    color: Colors.blueGrey,
                                  ))),




                 ],
               ),SizedBox(width: 15,),
                   
                
                  
                
              Padding(

                padding: const EdgeInsets.only(top: 15),
                child: ListView.separated(
                  itemBuilder: (context, index) => BuildProducts(
                    imagePath: "${products[index]['imagePath']}",
                    text: "${products[index]["text"]}",
                    price: "${products[index]["price"]}",
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: products.length,
                ),
              )
            ],
          ),
        ));
  }

  Widget BuildProducts(
          {required String imagePath,
          required String text,
          required String price}) =>
      Column(children: [
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue[100]),
          child: Row(
            children: [
              Container(
                height: 160,
                width: 160,
                child: Image(
                  image: NetworkImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                   TitlesTextWidget(label: "$text", maxLines: 2, color: Colors.blueAccent),
               
                SizedBox(
                  height: 15,


                ),
                TitlesTextWidget(label: "$price", color: Colors.blue)
              ])
            ],
          ),
        )
      ]);
}
