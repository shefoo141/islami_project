import 'package:flutter/material.dart';
import 'package:islami_project/screens/myThemes.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int counter = 0;
  int counter2 = 0;
  double angle = 0;
  List<String> tasbehat = ['سبحان الله ', ' الحمد لله', 'الله اكبر'];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.40,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                      left: width * 0.45,
                      child: Image(
                          image:
                              AssetImage('assets/images/head_sebha_logo.png'))),
                  Positioned(
                      top: height * 0.1,
                      child: Transform.rotate(
                          angle: angle,
                          child: Image(
                              image: AssetImage(
                                  'assets/images/body_sebha_logo.png')))),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Tasbehat Times',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: myThemes.lightaccentcolor),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: myThemes.lightprimarycolor.withOpacity(0.6),
              ),
              child: Text(
                '$counter',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  pressed();
                  angle += 15;
                  setState(() {});
                },
                child: Text(
                  tasbehat[counter2],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: myThemes.lightprimarycolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void pressed() {
    if (counter == 33) {
      counter = 0;
      if (counter2 == tasbehat.length - 1) {
        counter2 = 0;
      } else {
        counter2++;
      }
    } else {
      counter++;
    }
  }
}
