import 'package:flutter/material.dart';
import 'package:untitled8/screens/cart/bottom_checkout.dart';
import 'package:untitled8/services/assets_manager.dart';
import 'package:untitled8/widgets/empty_bag.dart';
import 'package:untitled8/widgets/subtitle_text.dart';
import 'package:untitled8/widgets/title_text.dart';

import 'cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
final bool isEmpty  =false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  isEmpty? Scaffold(
        appBar: AppBar(
            title: TitlesTextWidget(label: "Cart(5)",),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/bag.jpeg",
              ),
            ),
        actions:[
          IconButton(onPressed:(){},icon:Icon(Icons.delete),color:Colors.red)




        ]

        ),
      body: EmptyBagWidget(imagePath: AssetsManager. shoppingBasket,title:" Your cart is empty",subtitle: "_Looks like you have not added anything yet to your cart,\nGo ahead & start shopping now -->",buttonText: "Shop now",)
    ):Scaffold(bottomSheet: CartBottomCheckout()
      ,
      appBar: AppBar(
          title:  TitlesTextWidget(label: "Cart(5)",),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/bag.jpeg",
            ),
          )),
      
        
      body:ListView.builder(itemBuilder: (context, index) => CartWidget(),
      itemCount: 1,
      
      )  


        
        
    
    );
  }
}
