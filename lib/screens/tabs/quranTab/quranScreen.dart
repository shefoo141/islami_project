import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/quranTab/suraNameItem.dart';

class quranScreen extends StatefulWidget {
static String routname ='Quran';
  @override
  State<quranScreen> createState() => _quranScreenState();
}

class _quranScreenState extends State<quranScreen> {
  List<String>lines = [];
  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as suraArgs;
    if(lines.isEmpty)
      {
        readSuraFiles(args.suraFile);
      }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(args.suraName),
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: myThemes.lightaccentcolor),
        ),
        body: ListView.builder(
            itemCount: lines.length,
            itemBuilder: (context,index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("${lines[index]} {${index+1}}" ,
              style: TextStyle(fontSize:25 , fontWeight: FontWeight.bold ,
                  color: myThemes.lightaccentcolor ),
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