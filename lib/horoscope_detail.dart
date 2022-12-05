import 'package:flutter/material.dart';
import 'package:horoscopes_app/home_page.dart';

import 'horoscope.dart';

class HoroscopeDetail extends StatelessWidget {
  final int index;
  const HoroscopeDetail({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    List<Horoscope> horoscopes = HomePage.allHoroscopes;
    return Scaffold(
        appBar: AppBar(
          title: Text(horoscopes[index].name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/${horoscopes[index].largeImage}'),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 15, 0, 0),
                child: Text(horoscopes[index].description),
              )
            ],
          ),
        ));
  }
}
