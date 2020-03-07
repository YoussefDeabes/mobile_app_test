import 'package:flutter/material.dart';

import '../../res/coolor.dart';

class CenterMDetailsScreen extends StatelessWidget {
  static const ROUTE_NAME = '/cm-details-screen';
  @override
  Widget build(BuildContext context) {
    final argsPhoto = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      primary: false,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  argsPhoto,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Text(
                  'من الملاعب السعودية الى منصة التتويج بكأس العالم..',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  'الدوري الرياضي',
                  style: TextStyle(color: Coolor.GREY, fontSize: 18),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  '12 يوليو2018 ',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Coolor.GREY),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Text(
                  'بعد أن عبر مدرب الفيصلي والهلال السابق، زلاتكو داليتش، بالمنتخب الكرواتي إلى نهائي مونديال روسيا 2018، ألقت الذاكرة بظلالها على المدربين الذين دربوا فرقاً سعودية ثم قادوا البرازيل للحصول على كأس العالم ومنهم ثالث وصل النهائي ولم يفز.وفي حالة فوز زلاتكو مع منتخب كرواتيا بالمونديال فإن ذلك سيعد المدرب الثالث الذي يدرب فرق سعودية ويحصد كأس العالم، كـ كارلوس ألبرتو بيريرا ولويز فيليبي سكولاري، والمدرب الرابع الذي يصل النهائي كـ ماريو زاغالو.بعد أن عبر مدرب الفيصلي والهلال السابق، زلاتكو داليتش، بالمنتخب الكرواتي إلى نهائي مونديال روسيا 2018، ألقت الذاكرة بظلالها على المدربين الذين دربوا فرقاً سعودية ثم قادوا البرازيل للحصول على كأس العالم ومنهم ثالث وصل النهائي ولم يفز.وفي حالة فوز زلاتكو مع منتخب كرواتيا بالمونديال فإن ذلك سيعد المدرب الثالث الذي يدرب فرق سعودية ويحصد كأس العالم، كـ كارلوس ألبرتو بيريرا ولويز فيليبي سكولاري، والمدرب الرابع الذي يصل النهائي كـ ماريو زاغالو.بعد أن عبر مدرب الفيصلي والهلال السابق، زلاتكو داليتش، بالمنتخب الكرواتي إلى نهائي مونديال روسيا 2018، ألقت الذاكرة بظلالها على المدربين الذين دربوا فرقاً سعودية ثم قادوا البرازيل للحصول على كأس العالم ومنهم ثالث وصل النهائي ولم يفز.وفي حالة فوز زلاتكو مع منتخب كرواتيا بالمونديال فإن ذلك سيعد المدرب الثالث الذي يدرب فرق سعودية ويحصد كأس العالم، كـ كارلوس ألبرتو بيريرا ولويز فيليبي سكولاري، والمدرب الرابع الذي يصل النهائي كـ ماريو زاغالو.',
                  textAlign: TextAlign.start,
                  style: TextStyle( fontSize: 18),
                  maxLines: 50,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
