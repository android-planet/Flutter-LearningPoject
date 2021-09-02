// @dart=2.9
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routs.dart';
import 'package:untitled/widgets/theams.dart';




void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light ,
      theme: MyTheme.liteTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoutes:(context)=>HomePage(),
        MyRoutes.loginRoutes:(context)=>LoginPage(),

      },
    );
  }
}
