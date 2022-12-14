import 'package:flutter/material.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethTab.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadeth_data_model.dart';

class hadethScreen extends StatelessWidget{
static String routename = ' Hadeth';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as hadethDataModel_2;
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
          title: Text(args.title),
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: myThemes.lightaccentcolor),
        ),
       body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.symmetric(vertical: 5),
           child: Text(args.content, style: TextStyle(fontWeight: FontWeight.bold
               , fontSize: 22, color: myThemes.lightaccentcolor),
             textDirection: TextDirection.rtl,textAlign: TextAlign.start,),
         ),
       ) ,
      ),
    );
  }
}
