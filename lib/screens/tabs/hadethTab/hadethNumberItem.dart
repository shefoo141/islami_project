import 'package:flutter/material.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethTab.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadeth_data_model.dart';

class hadethNumberItemInfo extends StatelessWidget {
  hadethDataModel_2 hadethItem;
  hadethNumberItemInfo(this.hadethItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'Hadeth', arguments: hadethItem);
          },
          child: Container(
            child: Text(hadethItem.title,textAlign: TextAlign.center
              ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22
                  , color: myThemes.lightaccentcolor),),
          ),
        ),
        Divider(color: myThemes.lightprimarycolor,thickness: 3,),
      ],
    );
  }
}