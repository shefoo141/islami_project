import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:provider/provider.dart';

class localeBottomSheet extends StatelessWidget {
 late provider providerSettings;
  @override
  Widget build(BuildContext context) {
    providerSettings =Provider.of(context);
    return Column(
      children: [
        InkWell(
          onTap: ()
          {
            providerSettings.changeappLocale("en");
          },
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(7),
            child: Text('English', style: TextStyle(fontSize: 12
                , fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),),
          ),
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: () {
            providerSettings.changeappLocale("ar");
          },
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(7),
            child: Text('العربية', style: TextStyle(fontSize: 12
                , fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),),
          ),
        ),

      ],
    );
  }
}
