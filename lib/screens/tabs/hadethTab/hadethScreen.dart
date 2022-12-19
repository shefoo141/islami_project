import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethTab.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadeth_data_model.dart';
import 'package:provider/provider.dart';

class hadethScreen extends StatelessWidget{
static String routename = ' Hadeth';
late provider providerSettings;
  @override
  Widget build(BuildContext context) {
    providerSettings =Provider.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as hadethDataModel_2;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(providerSettings.appThemeMode==ThemeMode.light ?
            'assets/images/default_bg.png':'assets/images/dark_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
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
          title: Text(args.title),
            titleTextStyle :Theme.of(context).textTheme.headline5
        ),
       body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.symmetric(vertical: 5),
           child: Text(args.content, style: Theme.of(context).textTheme.headline5,
             textDirection: TextDirection.rtl,textAlign: TextAlign.start,),
         ),
       ) ,
      ),
    );
  }
}
