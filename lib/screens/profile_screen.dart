import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled8/providers/theme_provider.dart';
import 'package:untitled8/screens/cart/bottom_checkout.dart';
import 'package:untitled8/screens/cart/cart_screen.dart';
import 'package:untitled8/screens/theEnd1.dart';
import 'package:untitled8/services/assets_manager.dart';
import 'package:untitled8/widgets/app_name_text.dart';
import 'package:untitled8/widgets/subtitle_text.dart';
import 'package:untitled8/widgets/title_text.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider =Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
            title: AppNameTextWidget(fontSize:20,),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/bag.jpeg",
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TitlesTextWidget(
                    label: "Please login to have ultimate access"),
              ),
            ),
            SizedBox(height:20,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Row(children: [
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.background,
                            width: 3),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg") ,fit:BoxFit.fill
                        ))),
            SizedBox(width: 7,)
            ,Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    TitlesTextWidget(label: "Aya Salah"),SubtitleTextWidget(label:"aya1@gmail.com")




                  ]




                )  ]),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 24),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[ TitlesTextWidget(label: "General"),
              CustomListTitle(imagePath: AssetsManager.orderSvg, text: "All orders", function: (){Navigator.push(context,MaterialPageRoute( builder: (context) => CartScreen() ,
              ) );}),
                  CustomListTitle(imagePath: AssetsManager.wishlistSvg, text: "Wishlist", function: (){}),
                  CustomListTitle(imagePath: AssetsManager.recent, text: "Viewed Recently", function: (){}),
                CustomListTitle(imagePath: AssetsManager.address, text: "Address", function: (){})
,Divider(thickness: 1,),
                    SizedBox(height: 7,),
                    TitlesTextWidget(label: "Settings"),
                    SizedBox(height: 7,),
                    SwitchListTile(
                      secondary: Image.asset(AssetsManager.theme,height: 30,),
                        title: Text(themeProvider.getIsDarkTheme? "Dark mode":"light mode"),
                        value: themeProvider.getIsDarkTheme, onChanged: (value) {themeProvider.setDarkTheme(themeValue: value);})
                    ,Divider(thickness: 1,),


              ]
              )
          ,
            ),
              Center(child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  onPressed: (){Navigator.push(context,MaterialPageRoute( builder: (context) => End1() ,
              ) );}, icon:Icon(Icons.login),label: Text("Logout")))




              ]),
        ));
  }
}
class CustomListTitle extends StatelessWidget {
  const CustomListTitle({super.key, required this.imagePath, required this.text, required this.function});
final String imagePath,text;
final Function function;
  @override
  Widget build(BuildContext context) {  
    return ListTile(onTap: (){function();},
      leading: Image.asset(imagePath,height: 30,),
      title: SubtitleTextWidget(label: text,),
      trailing: Icon(IconlyLight.arrowRight2),



    );


  }
}
