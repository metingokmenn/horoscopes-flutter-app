import 'package:flutter/material.dart';
import 'package:horoscopes_app/horoscope.dart';
import 'package:horoscopes_app/horoscope_detail.dart';
import 'package:horoscopes_app/route_generator.dart';
import 'package:horoscopes_app/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List<Horoscope> allHoroscopes = List.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horoscopes'),
      ),
      body: ListView.builder(
          itemCount: prepareHoroscopeList().length,
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/horoscopeDetail',arguments: index);
              },
              title: Text(
                prepareHoroscopeList()[index].name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              subtitle: Text(
                prepareHoroscopeList()[index].date,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              leading: CircleAvatar(
                  child:
                      prepareImage(prepareHoroscopeList()[index].smallImage)),
            );
          })),
    );
  }

  List<Horoscope> prepareHoroscopeList() {
    allHoroscopes = List.generate(
        Strings.BURC_ADLARI.length,
        (index) => Horoscope(
            Strings.BURC_ADLARI[index],
            Strings.BURC_GENEL_OZELLIKLERI[index],
            Strings.BURC_TARIHLERI[index],
            '${Strings.BURC_ADLARI[index].toLowerCase()}${index + 1}.png',
            '${Strings.BURC_ADLARI[index].toLowerCase()}_buyuk${index + 1}.png'));

    return allHoroscopes;
  }

  Image prepareImage(String imagePath) {
    return Image.asset('assets/images/$imagePath');
  }
}
