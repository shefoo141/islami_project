import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/quranTab/suraNameItem.dart';
import 'package:provider/provider.dart';

class quranScreen extends StatefulWidget {
static String routname ='Quran';
  @override
  State<quranScreen> createState() => _quranScreenState();
}

class _quranScreenState extends State<quranScreen> {
  List<String>lines = [];
  late provider providerSettings;
  @override
  Widget build(BuildContext context) {
    providerSettings =Provider.of(context);
    var args =ModalRoute.of(context)!.settings.arguments as suraArgs;
    if(lines.isEmpty)
      {
        readSuraFiles(args.suraFile);
      }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(providerSettings.appThemeMode==ThemeMode.light ?
            'assets/images/default_bg.png':'assets/images/dark_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading:providerSettings.appThemeMode==ThemeMode.light?
          InkWell(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: myThemes.lightaccentcolor,)):
          InkWell(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white,)),
          title: Text(args.suraName), titleTextStyle: Theme.of(context).textTheme.headline5
        ),
        body: ListView.builder(
            itemCount: lines.length,
            itemBuilder: (context,index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("${lines[index]} {${index+1}}" ,
              style: Theme.of(context).textTheme.headline5,
              textDirection:TextDirection.rtl, textAlign: TextAlign.center, ),
          ],
        )),
      ),
    );
  }
  void readSuraFiles(String suraFile) async
  {
    String fileContent=await rootBundle.loadString("assets/quran_file/$suraFile");
    lines = fileContent.split('\n');
    lines= lines.where((line) => line.isNotEmpty).toList();
    setState(() {});

  }
}