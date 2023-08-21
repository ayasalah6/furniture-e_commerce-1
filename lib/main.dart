import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:untitled8/screens/onboarding_screen/onboarding_screen1.dart';

import 'consts/theme_data.dart';
import 'untitled8/screens/onboarding_screen/onboarding_screen1.dart';

 Future <void> main() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers:
        [ChangeNotifierProvider(create:(_) { return ThemeProvider();})],
      child: Consumer<ThemeProvider>(
        builder: (context,themeProvider,child) {
          return MaterialApp(
            title: 'Shop beautiful furniture',
theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme,context: context),
            home:Onboarding1(



            )












            );
        }
      )
    );

















  }
}