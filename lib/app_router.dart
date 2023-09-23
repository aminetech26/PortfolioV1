import 'package:flutter/material.dart';
import 'package:portfolio/presentation_layer/screens/about_me.dart';
import 'package:portfolio/presentation_layer/screens/home_page.dart';
class AppRouter {

  Route? generateRoutes (RouteSettings settings){

    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) =>  HomePage());
      case '/AboutMe':
        return MaterialPageRoute(builder: (_)=> const AboutMe());
    }
    return null;
  }

}