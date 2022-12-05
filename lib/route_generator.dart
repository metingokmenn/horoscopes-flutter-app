import 'package:flutter/material.dart';
import 'package:horoscopes_app/home_page.dart';
import 'package:horoscopes_app/horoscope_detail.dart';

class RouteGenerator {

  Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: ((context) => HomePage()));

      case '/horoscopeDetail':
        return MaterialPageRoute(
            builder: (context) => HoroscopeDetail(index: settings.arguments as int));
    }
  }
}
