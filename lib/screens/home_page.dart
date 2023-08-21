import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/providers/theme_provider.dart';
import 'package:provider/provider.dart';


import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider =Provider.of<ThemeProvider>(context);

    return Scaffold(
        body: Column(
            mainAxisAlignment:MainAxisAlignment.center,

          children: [
      Text(
        "Hi ",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800,fontStyle: FontStyle.italic),
      ),
      ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute( builder: (context) => Home()));}, child: Text("Hi Again...🥰")),
      SwitchListTile(
          title: Text(themeProvider.getIsDarkTheme? "Dark mode":"light mode"),
          value: themeProvider.getIsDarkTheme, onChanged: (value) {themeProvider.setDarkTheme(themeValue: value);})
    ]));
  }
}
