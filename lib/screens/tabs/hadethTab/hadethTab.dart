import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethNumberItem.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethTab.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadeth_data_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class hadethTab extends StatefulWidget {
  @override
  State<hadethTab> createState() => _hadethTabState();
}

class _hadethTabState extends State<hadethTab> {
  List<hadethDataModel_2> hadethModel= [];
  late provider providerSettings;
  @override
  Widget build(BuildContext context) {
    providerSettings =Provider.of(context);
   if(hadethModel.isEmpty)
   {
     readAhadeth();
   }
    return Column(
        children: [
        Expanded(flex:30,child: Image.asset('assets/images/hadeth_logo.png')),
    Divider(color: myThemes.lightprimarycolor, thickness: 3,),
    Text(AppLocalizations.of(context)!.ahadeth, style: Theme.of(context).textTheme.bodyText1,),
    Divider(color: myThemes.lightprimarycolor, thickness: 3,),
    Expanded(flex:70,
        child: ListView.builder(
            itemCount: hadethModel.length,
           itemBuilder: (context,index) => hadethNumberItemInfo(hadethModel[index])
        )),
    ],
    );
  }

 void readAhadeth ()async
  {
    String fileContent = await rootBundle.loadString("assets/ahadeth_file/ahadeth.txt");
    List<String> ahadeth = fileContent.split("#\r\n");
    for(int i=0;i<ahadeth.length ;i++)
      {
        List<String>hadethlines =ahadeth[i].split("\n");
        String title =hadethlines[0];
        hadethlines.removeAt(0);
        String content = hadethlines.join();
        hadethModel.add(hadethDataModel_2(title, content));
      }
    setState(() {});
  }
}

