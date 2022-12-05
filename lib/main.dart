import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:horoscopes_app/home_page.dart';
import 'package:horoscopes_app/route_generator.dart';
import 'package:horoscopes_app/strings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horoscopes',
      home: HomePage(),
      onGenerateRoute: RouteGenerator().routeGenerator,
    );
  }
}
