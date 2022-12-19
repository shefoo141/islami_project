import 'package:flutter/material.dart';
import 'package:islami_project/screens/myThemes.dart';

class suraNameItem extends StatelessWidget {
String suraname;
int index;
suraNameItem(this.suraname, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'Quran', arguments: suraArgs(suraname, "${index+1}.txt") );
          },
          child: Container(
            child: Text(suraname,textAlign: TextAlign.center
              ,style: Theme.of(context).textTheme.bodyText1,),
          ),
        ),
        Divider(color: myThemes.lightprimarycolor,thickness: 3,),
      ],
    );
  }
}


class suraArgs{
  String suraName;
  String suraFile;
  suraArgs(this.suraName, this.suraFile);


}