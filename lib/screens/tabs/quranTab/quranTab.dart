import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/quranTab/suraNameItem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class quranTab extends StatelessWidget {
List<String>suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
"الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
 late provider providerSettings;
  @override
  Widget build(BuildContext context) {
    providerSettings = Provider.of(context);
    return Column(
      children: [
       Expanded(flex:30,child: Image.asset('assets/images/qur2an_screen_logo.png')),
        Divider(color: myThemes.lightprimarycolor, thickness: 3,),
        Text(AppLocalizations.of(context)!.suraName, style: Theme.of(context).textTheme.bodyText1,),
        Divider(color: myThemes.lightprimarycolor, thickness: 3,),
        Expanded(flex:70,child: ListView.builder(
            itemCount: suraNames.length,
            itemBuilder: (context,index)=>suraNameItem(suraNames[index], index),
        ),
        ),
      ],

    );
  }
}
